require 'rails_helper'

RSpec.describe "helps/edit", :type => :view do
  before(:each) do
    @help = assign(:help, Help.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit help form" do
    render

    assert_select "form[action=?][method=?]", help_path(@help), "post" do

      assert_select "input#help_title[name=?]", "help[title]"

      assert_select "textarea#help_body[name=?]", "help[body]"
    end
  end
end
