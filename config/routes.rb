Rails.application.routes.draw do

  root to: "static#home"

  resources :debriefs

  resources :users, only: [] do
    resources :routes
  end
  
  get "/signup", to: "users#new", as:"signup"
  post"/signup", to: "users#create"
  
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destory", as: "logout"

  # omniauth callback route, use :provider instead of multiple routes for many omniauth medias.. :provider needs to be in user schema..
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
