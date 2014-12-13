Rails.application.routes.draw do

  resources :questions, only: :index

  resources :inquiries, only: [:show, :new, :create]
  resources :contents, only: :index
  resources :helps, only: :index

  root to: "contents#index"
end
