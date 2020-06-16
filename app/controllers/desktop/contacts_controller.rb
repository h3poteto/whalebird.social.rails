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

  # GET /desktop/contacts/1
  def show
    @inquiry = ::Inquiry.where(id: session[:inquiry_id]).first
    session.delete(:inquiry_id)
    redirect_to root_path if @inquiry.blank?
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
    # failed: "{\n  \"success\": false,\n  \"error-codes\": [\n    \"missing-input-response\"\n  ]\n}"
    # success: "{\n  \"success\": true,\n  \"challenge_ts\": \"2020-06-16T14:17:18Z\",\n  \"hostname\": \"localhost\",\n  \"score\": 0.9,\n  \"action\": \"contact\"\n}"
    response = JSON.parse(res.body)
    unless response["success"]
      raise RecaptchaError, response["error-codes"]
    end

    @inquiry = ::Inquiry.new(inquiry_params)
    unless response["score"] > 0.5
      flash[:notice] = t('desktop.contacts.create.recaptcha_score_error')
      return render :new
    end

    if @inquiry.save
      session[:inquiry_id] = @inquiry.id
      redirect_to desktop_contact_path(@inquiry, locale: params[:locale]), notice: t('desktop.contacts.create.success')
    else
      render :new
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:email, :body, :recaptcha_response)
    end
end
