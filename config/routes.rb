Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe/webhook'

  devise_for :users

  resources :episodes
  resource :subscription
  resource :card

  root to: "episodes#index"
end
