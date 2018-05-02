require "rails_helper"

RSpec.describe Desktop::ContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desktop/contacts").to route_to("desktop/contacts#index")
    end

    it "routes to #new" do
      expect(:get => "/desktop/contacts/new").to route_to("desktop/contacts#new")
    end

    it "routes to #show" do
      expect(:get => "/desktop/contacts/1").to route_to("desktop/contacts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/desktop/contacts/1/edit").to route_to("desktop/contacts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/desktop/contacts").to route_to("desktop/contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/desktop/contacts/1").to route_to("desktop/contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/desktop/contacts/1").to route_to("desktop/contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/desktop/contacts/1").to route_to("desktop/contacts#destroy", :id => "1")
    end

  end
end
