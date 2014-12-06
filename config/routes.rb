Rails.application.routes.draw do

  resources :inquiries, only: [:index, :show, :new, :create]
  resources :contents, only: :index
  resources :helps, only: [:index, :show]

  root to: "contents#index"
end
