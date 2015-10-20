Rails.application.routes.draw do
  root "pages#home"

  resources :participations
  resources :matches
  resources :arenas
  resources :places
  resources :addresses
  resources :positions
  devise_for :users
end
