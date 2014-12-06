Rails.application.routes.draw do
  resources :inquiries, only: [:index, :show, :new, :create]
  resources :contents, only: :index

  root to: "contents#index"
end
