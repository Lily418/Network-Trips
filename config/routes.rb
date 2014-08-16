Rails.application.routes.draw do
  root 'home#index'
  get "trip/:page_name" => "trip#trip_page"
  resources :users
  resources :comments
  resources :sessions, only: [:create, :destroy]
end
