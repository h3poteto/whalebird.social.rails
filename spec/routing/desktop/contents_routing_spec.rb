require "rails_helper"

RSpec.describe Desktop::ContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desktop/contents").to route_to("desktop/contents#index")
    end

    it "routes to #new" do
      expect(:get => "/desktop/contents/new").to route_to("desktop/contents#new")
    end

    it "routes to #show" do
      expect(:get => "/desktop/contents/1").to route_to("desktop/contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/desktop/contents/1/edit").to route_to("desktop/contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/desktop/contents").to route_to("desktop/contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/desktop/contents/1").to route_to("desktop/contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/desktop/contents/1").to route_to("desktop/contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/desktop/contents/1").to route_to("desktop/contents#destroy", :id => "1")
    end

  end
end
