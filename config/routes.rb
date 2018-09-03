Rails.application.routes.draw do

  root to: 'dispensaries#index'

  namespace :admin do
    resources :users
    resources :strains
  end

  resources :users, only: [:show] do
    resources :dispensaries, only: [:show]
  end

  resources :dispensaries, only: [:index, :show]
  resources :strains, only: [:show]
  resources :users, only: [:show, :edit, :update]
end
