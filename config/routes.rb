Rails.application.routes.draw do
  devise_for :users

  resources :episodes
  resource :subscription

  root to: "episodes#index"
end
