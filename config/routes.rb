Rails.application.routes.draw do
  resources :events, only: [:show,:index,:create] do 
    resources :items, only: [:create]
  	resources :assignments, only:[:create]
  end

  root 'incio#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
