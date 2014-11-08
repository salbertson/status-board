Rails.application.routes.draw do
  root to: "application#index"

  resources :subscriptions, only: [:create], defaults: { format: :json }

  get "/auth/github/callback", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
end
