class HelpsController < ApplicationController
  caches_page :index
  # GET /helps
  # GET /helps.json
  def index
    @helps = Help.all
  end
end
