class Inquiry < ActiveRecord::Base
  after_create :send_admin
  validates :email, presence: true
  validates :body, presence: true

  def send_admin
    InquiryMailer.send_admin(id).deliver
  end
end
