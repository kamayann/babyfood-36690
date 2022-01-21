Rails.application.routes.draw do

  devise_for :users
  root to: "babys#index"
  resources :users, only: [:edit, :update]
end
