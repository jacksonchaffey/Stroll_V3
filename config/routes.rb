Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  get 'messages/indexx'
  get 'conversations/index'
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  resources :charges, only: [:new, :create]
  resources :puppies
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  resources :home
  
  root to: "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
