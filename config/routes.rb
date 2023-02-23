Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages, only: [:index]
  resources :clusters, only: [:index, :new, :create] do
    resources :starts, only: [:new, :create]
    resources :associations, only: [:index]

  end
  resources :starts, only: [:new, :create]
  resources :users, only: [:show]
  root "pages#index"
  #root "clusters#index"

  # Defines the root path route ("/")
  
end
