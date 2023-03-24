Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :heros, only:[:index]
  resources :powers, only:[:index]
  resources :hero_powers, only:[:index]
end
