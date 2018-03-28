class Ios::ContentsController < IosController
  caches_action :index, :cache_path => Proc.new { |app|
    caches_action_by_request(app)}
  def index
  end
end
