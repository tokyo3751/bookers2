Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  get "/home/about" => "home#about", as: "about"
  resources :users
  resources :books
end
