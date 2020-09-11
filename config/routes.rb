Rails.application.routes.draw do
<<<<<<< Updated upstream
=======
  root "tickets#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
   resources :users, only: [:edit, :update,:destroy]
   resources :tickets
>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
