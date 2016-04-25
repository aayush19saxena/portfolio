Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  resources :projects
end
