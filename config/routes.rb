Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :articles
  resources :animals
  resources :people

  get 'about'  , to: 'pages#about'
  get 'signup' , to: 'people#new'
  get 'login'  , to: 'sessions#new'

  post 'login' , to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
end
