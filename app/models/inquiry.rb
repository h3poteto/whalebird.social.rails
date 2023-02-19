class Inquiry
  include ActiveModel::Model

  attr_accessor :email, :body

  validates :email, presence: true
  validates :body, presence: true

  def send_admin
    InquiryMailer.send_admin(self).deliver
  end
end
