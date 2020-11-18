Rails.application.routes.draw do
  get 'messages/indexx'
  get 'conversations/index'
  resources :puppies
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  root to: "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
