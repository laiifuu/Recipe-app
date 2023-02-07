Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"

<<<<<<< HEAD
  resources :foods, only: [:index, :create, :destroy, :new]
  resources :inventories, only: [:show, :index]
  resources :recipes, only: [:show, :index]
=======
  resources :foods, only: [:index]
  resources :recipes, only: [:show, :index, :destroy, :create, :new]
  resources :inventories, only: [:show, :index, :destroy]
>>>>>>> dev
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]

end
