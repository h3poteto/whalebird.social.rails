require 'rails_helper'

RSpec.describe "Helps", :type => :request do
  describe "GET /helps" do
    it "works! (now write some real specs)" do
      get helps_path
      expect(response).to have_http_status(200)
    end
  end
end
