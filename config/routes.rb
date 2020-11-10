Rails.application.routes.draw do

  resources :movies, only: [:index, :create]
  # resources :users
  resources :user_movies

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

end
