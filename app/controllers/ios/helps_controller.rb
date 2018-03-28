class Ios::HelpsController < IosController
  caches_action :index, :cache_path => Proc.new { |app|
    caches_action_by_request(app)}
  # GET /helps
  # GET /helps.json
  def index
    @helps = Help.all
  end
end
