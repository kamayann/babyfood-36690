Rails.application.routes.draw do

  devise_for :users
  root to: "babies#index"
  resources :users, only: [:edit, :update]
  resources :babies, only: [:index, :new, :create, :edit, :update]
end
