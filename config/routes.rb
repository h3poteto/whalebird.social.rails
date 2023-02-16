# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    namespace :desktop do
      get "/contents/downloads" => "contents#downloads"
      resources :contents, only: :index
      resources :contacts, only: %i[show new create]
    end
    get "/desktop/privacy_policy" => "desktop/privacy_policy#index"
    get "/desktop" => "desktop/contents#index"
    get "/desktop/releases" => "desktop/releases#index"
    root to: "desktop/contents#index"
  end
end
