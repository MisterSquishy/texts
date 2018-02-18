Rails.application.routes.draw do
  get 'home/index'
  get 'parse' => 'application#parse'

  resources :texts
  resources :date

  root 'home#index'
end
