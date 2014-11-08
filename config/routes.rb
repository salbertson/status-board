Rails.application.routes.draw do
  root to: "application#index"

  resources(
    :subscriptions,
    only: [:create, :destroy],
    defaults: { format: :json },
    param: :name
  )

  get "/auth/github/callback", to: "sessions#create"
  get "/sign_out", to: "sessions#destroy"
end
