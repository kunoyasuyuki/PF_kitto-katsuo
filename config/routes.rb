Rails.application.routes.draw do

root "tickets#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resources :rooms, only: [:create] do
      resources :messages, only:[:index,:create]
    end
  end

  resources :tickets do
    resources :rooms, only: [:create]
    collection do 
      get 'search'
    end
 
    resources :orders, only:[:index, :create]
    resources :comments, only:[:create]
  end
 
end




