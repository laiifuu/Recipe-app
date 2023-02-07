Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :foods, only: [:index]
  resources :recipes, only: [:show, :index, :destroy, :create, :new]
  resources :inventories, only: [:show, :index, :destroy]
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]

end
