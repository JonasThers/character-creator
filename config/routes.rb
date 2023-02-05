Rails.application.routes.draw do
  root "classes#index"

  get "/classes", to: "classes#index"
end
