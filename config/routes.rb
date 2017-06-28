Rails.application.routes.draw do
  devise_scope :user do
    root to: 'users#index'
  end

  devise_for :users

  resources :users, only: [:index, :show]
  resources :rewards, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :activities, only: [:new, :create, :show, :index, :edit, :update, :destroy]
end
