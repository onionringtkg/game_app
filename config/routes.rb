Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]

  resources :users, only: %i[create new]

  #resources :users, only: %i[new create]
  #root 'home#index'
  #get 'boards', to: 'boards#index'
  #get 'boards/new', to: 'boards#new'
  #post 'boards', to: 'boards#create'
  #get 'boards/:id', to: 'boards#show'
end
