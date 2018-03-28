# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    namespace :ios do
      resources :inquiries, only: %i[show new create]
      resources :contents, only: :index
      resources :helps, only: :index
    end
    root to: 'ios/contents#index'
  end
end
