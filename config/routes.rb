Rails.application.routes.draw do

  get 'users/new'

  root "static_pages#home"


  # 'static_pages/home'

  get '/help', to: 'static_pages#help', as: 'helf'
  get '/about', to:'static_pages#about'
  get 'static_pages/contact'
  get '/signup_path', to:'users#new'
  resources  :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
