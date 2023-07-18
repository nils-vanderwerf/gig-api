Rails.application.routes.draw do
  namespace :api do
    resources :gigs, only: [:index]
  end
end