# coding: utf-8
class InquiriesController < ApplicationController
  before_action :set_inquiry, only: :show

  # GET /inquiries/1
  # GET /inquiries/1.json
  def show
    ## TODO: sessionか何かをみて，create直後しかみられないようにしておいて
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
        format.html { redirect_to @inquiry, notice: 'お問い合わせを受け付けました
' }
        format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_params
      params.require(:inquiry).permit(:email, :body)
    end
end
