Rails.application.routes.draw do
  get 'babys/index'
  root to: "babys#index"
end
