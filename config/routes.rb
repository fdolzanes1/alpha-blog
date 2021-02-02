Rails.application.routes.draw do
  
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  resources :people, only: [:show, :index, :new, :create, :edit, :update]
  resources :animals, only: [:index, :show]
end
