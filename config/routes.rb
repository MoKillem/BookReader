Rails.application.routes.draw do
  devise_for :users
  resource :user do 
    resources :books
    resources :read_cycles
  end
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
