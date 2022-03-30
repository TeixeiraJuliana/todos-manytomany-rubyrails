Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :themes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
