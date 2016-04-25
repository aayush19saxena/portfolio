Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'welcome/index'
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  resources :projects

  get '*path' => redirect('/')
end
