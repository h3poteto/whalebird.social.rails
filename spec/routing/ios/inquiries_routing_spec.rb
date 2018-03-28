# frozen_string_literal: true

require "rails_helper"

RSpec.describe Ios::InquiriesController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(get: "/ios/inquiries/new").to route_to("ios/inquiries#new")
    end

    it "routes to #show" do
      expect(get: "/ios/inquiries/1").to route_to("ios/inquiries#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/ios/inquiries").to route_to("ios/inquiries#create")
    end
  end
end
