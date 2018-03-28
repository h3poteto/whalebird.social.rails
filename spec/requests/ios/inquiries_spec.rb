# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Ios::Inquiries", type: :request do
  describe "GET /ios/inquiry/new" do
    it "works! (now write some real specs)" do
      get new_ios_inquiry_path
      expect(response).to have_http_status(200)
    end
  end
end
