Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    resources :questions, only: :index

    resources :inquiries, only: [:show, :new, :create]
    resources :contents, only: :index
    resources :helps, only: :index
    root to: "contents#index"
  end

end
