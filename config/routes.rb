Rails.application.routes.draw do
  root to: "application#index"

  resource :user, only: [:update]
  resources(
    :subscriptions,
    only: [:create, :destroy],
    defaults: { format: :json }
  )

  get "/auth/github/callback", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
end
