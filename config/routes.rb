Rails.application.routes.draw do
  root 'home#index'
  get "trip/:page_name" => "home#trip_page"
end
