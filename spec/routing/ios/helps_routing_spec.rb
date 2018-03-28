# frozen_string_literal: true

require "rails_helper"

RSpec.describe Ios::HelpsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ios/helps").to route_to("ios/helps#index")
    end
  end
end
