require "rails_helper"

RSpec.describe InquiriesController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(get: "/inquiries/new").to route_to("inquiries#new")
    end

    it "routes to #show" do
      expect(get: "/inquiries/1").to route_to("inquiries#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/inquiries").to route_to("inquiries#create")
    end
  end
end
