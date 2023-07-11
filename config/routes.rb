Rails.application.routes.draw do
  
  get 'user/show'
  
  resources :chatrooms
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "chatrooms#index"
   
   resources :user
end
