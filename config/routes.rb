Rails.application.routes.draw do

  root 'articles#index'
  get 'about', to: 'top#about'

  get 'admin_login', to:'sessions#new'
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get 'article_management', to: 'top#article_management'
  get 'analysis', to: 'top#analysis'

  get 'group_index', to: 'articles#group_index'
  get 'latest_article', to: 'articles#latest_article'

  resources :articles
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
