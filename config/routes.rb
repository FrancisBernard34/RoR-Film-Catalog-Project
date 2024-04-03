Rails.application.routes.draw do
  root to: 'admin#index'
  resources :films
  resources :genres
  resources :directors
end
