Rails.application.routes.draw do
  devise_for :users
  
  resources :prescriptions
  resources :notes
  resources :appointments
  resources :rooms
  resources :profiles
  resources :insurances
  root to: 'welcome#index'
  resources :specialities
  resources :roles
  resources :clinics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
