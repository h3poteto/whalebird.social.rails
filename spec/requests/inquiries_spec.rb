require 'rails_helper'

RSpec.describe "Inquiries", :type => :request do
  describe "GET /inquiries" do
    it "works! (now write some real specs)" do
      get inquiries_path
      expect(response).to have_http_status(200)
    end
  end
end
