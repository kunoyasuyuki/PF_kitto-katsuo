Rails.application.routes.draw do

root "tickets#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
   resources :users do
   resources :messages, only:[:index]
   end
   
   resources :rooms, only: [:new, :create]

   resources :tickets do
    resources :rooms, only: [:new, :create]
    collection do 
      get 'search'
    end
 
     resources :orders, only:[:index, :create]
     resources :comments, only:[:create]
  end
 

end




