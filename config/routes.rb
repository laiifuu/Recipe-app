Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"

  resources :foods, only: [:index, :create, :destroy, :new]
  resources :recipes, only: [:show, :index, :destroy, :create, :new]
  resources :inventories, only: [:show, :index, :destroy, :create, :new]
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index, :create]

end
