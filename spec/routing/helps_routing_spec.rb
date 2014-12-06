require "rails_helper"

RSpec.describe HelpsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/helps").to route_to("helps#index")
    end

    it "routes to #new" do
      expect(:get => "/helps/new").to route_to("helps#new")
    end

    it "routes to #show" do
      expect(:get => "/helps/1").to route_to("helps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/helps/1/edit").to route_to("helps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/helps").to route_to("helps#create")
    end

    it "routes to #update" do
      expect(:put => "/helps/1").to route_to("helps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/helps/1").to route_to("helps#destroy", :id => "1")
    end

  end
end
