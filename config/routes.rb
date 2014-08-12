Rails.application.routes.draw do
  root 'home#index'
  get "trip/:page_name" => "trip#trip_page"
end
