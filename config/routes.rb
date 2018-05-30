Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/about', to: 'about#index'
  resources :blogs
  resources :blog_categories
  resources :categories
  resources :skills
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
