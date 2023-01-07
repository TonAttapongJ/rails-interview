Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :admin do
    resources :products
  end

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show]
    end
  end

  resources :products, only: [:index, :show]

  root "products#index"
end
