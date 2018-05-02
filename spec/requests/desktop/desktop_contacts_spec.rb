require 'rails_helper'

RSpec.describe "Desktop::Contacts", type: :request do
  describe "GET /desktop_contacts" do
    it "works! (now write some real specs)" do
      get desktop_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
