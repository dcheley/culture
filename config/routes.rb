Rails.application.routes.draw do
  devise_scrope :user do
    root to: 'users#index'
  end

  devise_for :users

  resources :users, only: [:index, :show]
end
