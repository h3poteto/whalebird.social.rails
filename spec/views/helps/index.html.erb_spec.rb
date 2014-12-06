require 'rails_helper'

RSpec.describe "helps/index", :type => :view do
  before(:each) do
    assign(:helps, [
      Help.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Help.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of helps" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
