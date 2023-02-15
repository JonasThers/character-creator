Rails.application.routes.draw do
  root "main#index"

  resources :character_classes
  resources :characters
  resources :parties
end
