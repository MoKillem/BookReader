Rails.application.routes.draw do
  devise_for :users
  resources :read_cycles
  resources :books
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
