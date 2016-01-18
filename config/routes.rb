Rails.application.routes.draw do
  root 'movies#index'
  resource :session
  resources :users
  resources :movies do
    resources :reviews
  end
end
