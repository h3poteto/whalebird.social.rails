require "rails_helper"

RSpec.describe HelpsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/helps").to route_to("helps#index")
    end
  end
end
