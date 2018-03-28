# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Ios::Helps", type: :request do
  describe "GET /ios/helps" do
    it "works! (now write some real specs)" do
      get ios_helps_path
      expect(response).to have_http_status(200)
    end
  end
end
