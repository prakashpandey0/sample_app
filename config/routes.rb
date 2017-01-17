Rails.application.routes.draw do

  #get 'sessions/new'

  #get 'users/new'

  root "static_pages#home"


  # 'static_pages/home'

  get '/help_path', to: 'static_pages#help', as: 'helf'
  get '/about', to:'static_pages#about'
  get '/contact',to:'static_pages#contact'
  get '/signup_path', to:'users#new'

  get '/login_path', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources  :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
