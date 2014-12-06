require 'rails_helper'

RSpec.describe "helps/show", :type => :view do
  before(:each) do
    @help = assign(:help, Help.create!(
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
