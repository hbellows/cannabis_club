Rails.application.routes.draw do

  root to: 'dispensaries#index'

  namespace :admin do
    resources :users
    resources :strains
  end

  resources :dispensaries, only: [:index, :show]
  resources :strains, only: [:show]
  resources :users, only: [:show, :edit, :update]

  get "/login"     => "sessions#new"
  post "/login"    => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get 'admin/dashboard' => 'admin/base#dashboard'
end
