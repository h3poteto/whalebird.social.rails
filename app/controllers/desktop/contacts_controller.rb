# frozen_string_literal: true

class Desktop::ContactsController < DesktopController

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
    @inquiry = ::Inquiry.new(inquiry_params)

    if @inquiry.save
      session[:inquiry_id] = @inquiry.id
      redirect_to desktop_contact_path(@inquiry, locale: params[:locale]), notice: t('desktop.contacts.create.success')
    else
      render :new
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:email, :body)
    end
end
