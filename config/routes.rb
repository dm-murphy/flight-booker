Rails.application.routes.draw do
  get 'bookings/index'
  root "flights#index"
  resources :flights
end
