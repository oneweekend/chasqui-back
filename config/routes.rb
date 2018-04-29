Rails.application.routes.draw do
  resources :users do
    resources :locations
  end

  resources :chasquis

  resources :marks, only: %i[index create show destroy]
  resources :requests, only: %i[index create show]
  resources :alerts, only: :create

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
