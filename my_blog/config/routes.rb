Rails.application.routes.draw do
  root 'top#top'

  get "top/managements", to: "top#managements"

  resources :blogs
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
