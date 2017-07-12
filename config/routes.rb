Rails.application.routes.draw do
  devise_scope :user do
    root to: 'users#home'
  end

  devise_for :users

  get 'users/home' => 'users#home', as: :home
  post 'users/home' => 'users#create', as: :register_employee

  resources :users, only: [:index, :show]
  resources :rewards, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :activities, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :trackers
  resources :feedbacks, only: [:destroy]
  resources :trackers do
    resources :feedbacks, only: [:create, :update]
  end
end
