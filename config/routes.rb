Rails.application.routes.draw do
  devise_scope :user do
    root to: 'users#home'
  end

  devise_for :users

  get 'users/home' => 'users#home', as: :home
  post 'users/new' => 'users#create', as: :register_employee
  patch 'users/home' => 'users#update', as: :select_employee

  resources :users, only: [:new, :create, :index, :show]
  resources :rewards, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :activities, only: [:new, :create, :edit, :update]
  resources :trackers, only: [:create, :show, :edit, :update, :destroy]
  resources :feedbacks, only: [:destroy]
  resources :users do
    resources :activities, only: [:show]
  end
  resources :trackers do
    resources :feedbacks, only: [:create, :update]
  end
  resources :activities do
    resources :trackers, only: [:create]
  end
end
