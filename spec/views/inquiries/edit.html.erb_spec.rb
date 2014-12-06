require 'rails_helper'

RSpec.describe "inquiries/edit", :type => :view do
  before(:each) do
    @inquiry = assign(:inquiry, Inquiry.create!())
  end

  it "renders the edit inquiry form" do
    render

    assert_select "form[action=?][method=?]", inquiry_path(@inquiry), "post" do
    end
  end
end
