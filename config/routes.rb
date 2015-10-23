Rails.application.routes.draw do
  devise_for :users

  resources :episodes
  resource :subscription
  resource :card

  root to: "episodes#index"
end
