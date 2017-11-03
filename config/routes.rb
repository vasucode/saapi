Rails.application.routes.draw do
  resources :users
  resources :app_masters
  resources :app_calls
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
