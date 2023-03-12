Rails.application.routes.draw do
  devise_for :users
  root "main#index"

  resources :character_classes do
    collection { get 'pending_classes' }
  end
  resources :characters
  resources :parties
end
