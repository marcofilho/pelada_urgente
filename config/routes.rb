Rails.application.routes.draw do
  root "pages#home"

  resources :participations
  resources :matches
  resources :places do
    resources :arenas, controller: "places/arenas"
  end
  resources :addresses
  resources :positions
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
end
