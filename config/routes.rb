Rails.application.routes.draw do
  resources :portfolios
  #get 'pages/home'
  #Controller (or any name) TO Action (based on declared actions)
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
