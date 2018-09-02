Rails.application.routes.draw do

  root to: 'dispensaries#show'
  
  resources :dispensaries, only: [:show]
  resources :strains, only: [:show]
  resources :users, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
