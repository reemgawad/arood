Rails.application.routes.draw do
  root to: "meters#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meters, only: [:index, :new, :create]
end
