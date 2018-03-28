# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    namespace :ios do
      resources :inquiries, only: %i[show new create]
      resources :contents, only: :index
      resources :helps, only: :index
    end

    namespace :desktop do
      resources :contents, only: :index
    end
    get "/ios" => "ios/contents#index"
    get "/desktop" => "desktop/contents#index"
    root to: "desktop/contents#index"
  end
end
