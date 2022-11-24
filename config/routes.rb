Rails.application.routes.draw do
  resources :users, only: [:show] do
    #resource for items, a user has many items
    resources :items, only: [:index, :show, :create]
  end
  resources :items, only: [:index]
end
