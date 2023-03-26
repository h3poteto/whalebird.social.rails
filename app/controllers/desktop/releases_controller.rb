class Desktop::ReleasesController < DesktopController
  # GET /desktop/releases
  def index
    release = {
      latest_semver: "5.0.2",
      latest_ver: 161,
      minimum_support_semver: "5.0.2",
      minimum_support_ver: 161,
      download_url: "https://whalebird.social/desktop/contents/downloads"
    }
    render json: release
  end
end
