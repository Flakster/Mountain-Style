Rails.application.routes.draw do
  get 'votes/create'
  get 'votes/destroy'
  root 'articles#index'
  resources :categories
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
