require 'rails_helper'

RSpec.describe "Desktop::Contacts", type: :request do
  describe "GET /desktop/contacts/new" do
    it "works! (now write some real specs)" do
      get new_desktop_contact_path
      expect(response).to have_http_status(200)
    end
  end
end
