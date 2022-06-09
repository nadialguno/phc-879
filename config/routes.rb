Rails.application.routes.draw do
  get 'products/index'
  devise_for :users

  resources  :products, only: [:new, :create]

  root to: 'products#index'
end
