require "rails_helper"

RSpec.describe Desktop::ContactsController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/desktop/contacts/new").to route_to("desktop/contacts#new")
    end

    it "routes to #show" do
      expect(get: '/desktop/contacts').to route_to('desktop/contacts#show')
    end

    it "routes to #create" do
      expect(:post => "/desktop/contacts").to route_to("desktop/contacts#create")
    end
  end
end
