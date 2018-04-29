Rails.application.routes.draw do
  resources :users do
    resources :locations, only: %i[create index]
  end

  resources :locations, only: %i[show index]

  resources :chasquis, only: %i[show index]
  resources :services, only: %i[show index]

  resources :marks, only: %i[index create show destroy]
  resources :requests, only: %i[index create show]
  resources :alerts, only: :create

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
