# frozen_string_literal: true

require "rails_helper"

RSpec.describe Desktop::ContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desktop/contents").to route_to("desktop/contents#index")
    end
  end
end
