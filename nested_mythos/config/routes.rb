Rails.application.routes.draw do
  resources :mythos do
    resources :gods
  end
  resources :mythos do
    resources :myths
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
