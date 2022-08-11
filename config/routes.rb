Rails.application.routes.draw do
  resources :categories_transactions
  resources :transactions
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  authenticated :user do
    root to: 'categories#index'
  end
  unauthenticated :user do
    root to: "splashs#index", as: :unauthenticated_root
  end
end
