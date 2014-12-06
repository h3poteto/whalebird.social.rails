require 'rails_helper'

RSpec.describe "inquiries/show", :type => :view do
  before(:each) do
    @inquiry = assign(:inquiry, Inquiry.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
