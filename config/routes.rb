Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users

  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end

  root to: "public#home"

  get "browse", to: "browse#browse", as: :browse
end
