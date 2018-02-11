Rails.application.routes.draw do
  get 'home/index'
  get 'parse' => 'application#parse'

  resources :texts

  root 'home#index'
end
