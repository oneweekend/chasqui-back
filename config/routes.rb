Rails.application.routes.draw do
  resources :users do
    resource :session
    resources :locations
  end

  resources :chasquis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
