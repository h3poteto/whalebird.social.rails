require 'rails_helper'

RSpec.describe "helps/new", :type => :view do
  before(:each) do
    assign(:help, Help.new(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new help form" do
    render

    assert_select "form[action=?][method=?]", helps_path, "post" do

      assert_select "input#help_title[name=?]", "help[title]"

      assert_select "textarea#help_body[name=?]", "help[body]"
    end
  end
end
