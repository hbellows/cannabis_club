Rails.application.routes.draw do
  resources :strains
  resources :users
  resources :dispensaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
