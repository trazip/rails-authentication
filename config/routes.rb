Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/private", to: "pages#private"
end
