Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :clothes do
    resources :rents, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "clothes#index"
  get 'rents', to: 'rents#my_rents'
  get 'offers', to: 'rents#my_offers'
end
