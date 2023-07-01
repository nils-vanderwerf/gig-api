Rails.application.routes.draw do
  resources :create_genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :gigs, only: [:index, :create, :destroy, :update] do
        collection do
          get 'filter' => 'gigs#filter'
        end
      end
    end
    resources :favorites, only: [:index, :create, :destroy]
  end
end