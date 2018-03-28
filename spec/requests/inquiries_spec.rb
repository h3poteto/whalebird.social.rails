# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Inquiries", type: :request do
  describe "GET /inquiry/new" do
    it "works! (now write some real specs)" do
      get new_inquiry_path
      expect(response).to have_http_status(200)
    end
  end
end
