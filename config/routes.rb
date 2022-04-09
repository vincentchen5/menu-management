# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
  root to: "main#index"

end
