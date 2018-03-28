class Inquiry < ActiveRecord::Base
  after_commit :send_admin, on: :create
  validates :email, presence: true
  validates :body, presence: true

  def send_admin
    return unless Rails.env.production?
    InquiryMailer.send_admin(id).deliver
    InquiryNotifier.slack(id)
  end
end
