Rails.application.routes.draw do
  get 'mypage' => 'users#me'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#cdestroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users, only: %i[create new]
  resources :boards
  resources :comments, only: %i[create destroy]
end
