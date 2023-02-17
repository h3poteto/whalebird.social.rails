class InquiryMailer < ActionMailer::Base
  default from: ENV["SERVER_EMAIL"]

  def send_admin(inquiry)
    @inquiry = inquiry
    mail to: ENV["WEB_EMAIL"], subject: "お問い合わせがありました"
  end
end
