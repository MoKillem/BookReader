Rails.application.routes.draw do
  devise_for :users
  resource :user do 
    resources :books do 
      patch 'read' => 'books#update_read'
    end
    resources :read_cycles
  end
  get 'leaderboard' => 'leader#index'
  root 'books#index'
  resources :usera
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
