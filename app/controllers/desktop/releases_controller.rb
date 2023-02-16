class Desktop::ReleasesController < DesktopController
  # GET /desktop/releases
  def index
    release = {
      latest_semver: "4.7.4",
      latest_ver: 135,
      minimum_support_semver: "4.7.3",
      minimum_support_ver: 134,
      download_url: "https://whalebird.social/desktop/contents/downloads"
    }
    render json: release
  end
end
