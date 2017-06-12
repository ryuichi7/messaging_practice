Rails.application.routes.draw do
  root to: 'messages#index'
  devise_for :users
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  get 'messages/index'

  resources :chatrooms, only: [:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
