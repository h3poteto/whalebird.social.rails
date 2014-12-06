require 'rails_helper'

RSpec.describe "inquiries/new", :type => :view do
  before(:each) do
    assign(:inquiry, Inquiry.new())
  end

  it "renders new inquiry form" do
    render

    assert_select "form[action=?][method=?]", inquiries_path, "post" do
    end
  end
end
