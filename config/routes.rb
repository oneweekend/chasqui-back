Rails.application.routes.draw do
  resources :users do
    resources :locations
  end

  resource :session, only: %i[create destroy]

  resources :chasquis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
