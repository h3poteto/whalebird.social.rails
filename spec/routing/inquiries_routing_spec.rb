require "rails_helper"

RSpec.describe InquiriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/inquiries").to route_to("inquiries#index")
    end

    it "routes to #new" do
      expect(:get => "/inquiries/new").to route_to("inquiries#new")
    end

    it "routes to #show" do
      expect(:get => "/inquiries/1").to route_to("inquiries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/inquiries/1/edit").to route_to("inquiries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/inquiries").to route_to("inquiries#create")
    end

    it "routes to #update" do
      expect(:put => "/inquiries/1").to route_to("inquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inquiries/1").to route_to("inquiries#destroy", :id => "1")
    end

  end
end
