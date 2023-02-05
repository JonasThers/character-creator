Rails.application.routes.draw do
  root "main#index"

  get "/classes", to: "classes#index"
end
