Rails.application.routes.draw do
  devise_for :users
  root "main#index"

  resources :character_classes
  resources :characters
  resources :parties
end
