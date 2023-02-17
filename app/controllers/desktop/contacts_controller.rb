# frozen_string_literal: true
require 'net/http'
require 'uri'

class RecaptchaError < StandardError
  def initialize(msg)
    super
  end
end

class Desktop::ContactsController < DesktopController
  RECAPTCHA_SITEVERIFY_URL = 'https://www.google.com/recaptcha/api/siteverify'

  # GET /desktop/contacts
  def show
  end

  # GET /desktop/contacts/new
  def new
    @inquiry = ::Inquiry.new
  end

  # POST /desktop/contacts
  def create
    res = Net::HTTP.post_form(
      URI.parse(RECAPTCHA_SITEVERIFY_URL),
      {
        'secret' => ENV['RECAPTCHA_SECRET_KEY'],
        'response' => params[:recaptcha_response]
      })

    @inquiry = ::Inquiry.new(inquiry_params)
    # failed: "{\n  \"success\": false,\n  \"error-codes\": [\n    \"missing-input-response\"\n  ]\n}"
    # success: "{\n  \"success\": true,\n  \"challenge_ts\": \"2020-06-16T14:17:18Z\",\n  \"hostname\": \"localhost\",\n  \"score\": 0.9,\n  \"action\": \"contact\"\n}"
    response = JSON.parse(res.body)
    unless response["success"]
      logger.warn(response["error-codes"])
      flash[:notice] = t('desktop.contacts.create.recaptcha_score_error')
      return render :new
    end

    unless response["score"] > 0.5
      flash[:notice] = t('desktop.contacts.create.recaptcha_score_error')
      return render :new
    end

    if @inquiry.send_admin
      flash.now[:notice] = t('desktop.contacts.create.success')
      return render :show
    else
      render :new
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:email, :body, :recaptcha_response)
    end
end
