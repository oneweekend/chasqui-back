Rails.application.routes.draw do
  resources :users do
    resources :locations
  end

  resources :chasquis

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
