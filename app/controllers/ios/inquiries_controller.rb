# frozen_string_literal: true

class Ios::InquiriesController < IosController
  # GET /inquiries/1
  # GET /inquiries/1.json
  def show
    @inquiry = Inquiry.where(id: session[:inquiry_id]).first
    session.delete(:inquiry_id)
    redirect_to root_path if @inquiry.blank?
  end

  # GET /inquiries/new
  def new
    @inquiry = Inquiry.new
  end

  # POST /inquiries
  # POST /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        session[:inquiry_id] = @inquiry.id
        format.html { redirect_to @inquiry, notice: "お問い合わせを受け付けました" }
        format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def inquiry_params
    params.require(:inquiry).permit(:email, :body)
  end
end
