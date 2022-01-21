Rails.application.routes.draw do

  devise_for :users
  root to: "babies#index"
  resources :users, only: [:edit, :update]
end
