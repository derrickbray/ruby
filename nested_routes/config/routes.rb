Rails.application.routes.draw do

  get 'universes/index'
  root 'universes#index'

  resources :universes do
    resources :heros
  end

  resources :universes do
    resources :demi_gods
  end

  resources :universes do
    resources :gods
  end

  resources :universes do
    resources :myths
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
