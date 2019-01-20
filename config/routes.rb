Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :books, :only => [:index, :new, :create, :show]
  resources :authors
  resources :users, :only => [:new, :create, :show, :edit, :update]
  resources :shelves

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
