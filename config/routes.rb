Rails.application.routes.draw do

root "tickets#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
   resources :users, only: [:edit, :update,:destroy]
     

  resources :tickets do
    collection do 
      get 'search'
    end
     resources :orders, only:[:index, :create]
     resources :comments, only:[:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




