Rails.application.routes.draw do
  get 'home/index'

  resources :texts

  root 'home#index'
end
