Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :articles
  resources :animals
  resources :people

  get 'about', to: 'pages#about'
  get 'signup', to: 'people#new'
end
