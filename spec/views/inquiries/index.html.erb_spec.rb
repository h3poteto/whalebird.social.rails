require 'rails_helper'

RSpec.describe "inquiries/index", :type => :view do
  before(:each) do
    assign(:inquiries, [
      Inquiry.create!(),
      Inquiry.create!()
    ])
  end

  it "renders a list of inquiries" do
    render
  end
end
