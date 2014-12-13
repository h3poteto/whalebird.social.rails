class HelpsController < ApplicationController

  # GET /helps
  # GET /helps.json
  def index
    @helps = Help.all
  end
end
