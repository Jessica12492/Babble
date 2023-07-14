Rails.application.routes.draw do
  resources :messages
  post 'messages', to: 'messages#create'
  
  get 'user/show'

  
 # post	''POST	/chatrooms/:chatroom_id/messages(.:format)
# put '/chatrooms/:id/messages' => 'messages#create'
 
  resources :chatrooms do
   
  end
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "chatrooms#index"
   
   resources :user

   

   
end
