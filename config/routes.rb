Rails.application.routes.draw do

  get 'sessions/new'
  
  get 'welcome/index'

  get "log_out" =>"sessions#destroy", :as => "log_out"
  get "log_in" =>"sessions#new", :as => "log_in"
  get "sign_up" =>"users#new", :as => "sign_up"
  resources :users
  resources :sessions

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
