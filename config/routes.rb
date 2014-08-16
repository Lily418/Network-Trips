Rails.application.routes.draw do
  root 'home#index'
  get "trip/:page_name" => "trip#trip_page"
  get "idliketogo/:place_id" => "place#increment"
  resources :users
  resources :comments
  post "sessions" => "sessions#create"
  delete "sessions" => "sessions#delete"
end
