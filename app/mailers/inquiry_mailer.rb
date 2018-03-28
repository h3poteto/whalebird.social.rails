class InquiryMailer < ActionMailer::Base
  default from: ENV["SERVER_EMAIL"]

  def send_admin(inquiry_id)
    @inquiry = Inquiry.where(id: inquiry_id).first
    mail to: ENV["WEB_EMAIL"], subject: "お問い合わせがありました"
  end
end
