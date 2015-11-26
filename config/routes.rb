Rails.application.routes.draw do
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  mount StripeEvent::Engine, at: '/stripe/webhook'

  devise_for :users

  resources :episodes
  resource :subscription
  resource :card

  root to: "episodes#index"
end
