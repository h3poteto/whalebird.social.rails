class Ios::HelpsController < IosController
  caches_action :index
  # GET /helps
  # GET /helps.json
  def index
    @helps = Help.all
  end
end
