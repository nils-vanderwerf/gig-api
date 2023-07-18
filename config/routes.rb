Rails.application.routes.draw do
  resources :artists, :gigs, :venues, :genres
end