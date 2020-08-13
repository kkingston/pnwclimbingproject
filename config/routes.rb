Rails.application.routes.draw do
  resources :debriefs
  resources :users
  resources :routes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
