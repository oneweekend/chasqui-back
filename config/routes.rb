Rails.application.routes.draw do
  resources :users do
    resource :session
  end

  resources :chasquis do
    resources :locations
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
