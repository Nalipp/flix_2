Rails.application.routes.draw do
  get 'users/new'

  root 'movies#index'
  resources :movies do
    resources :reviews
  end
end
