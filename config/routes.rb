Rails.application.routes.draw do
  get 'dashboard/index'
  resources :related_programs
  resources :programs
  resources :codes
  resources :source_files
  resources :libraries
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :program_relationships
  resources :program_dummies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "dashboard#index"
end
