class Inquiry < ActiveRecord::Base

  validates :email, presence: true
  validates :body, presence: true
end
