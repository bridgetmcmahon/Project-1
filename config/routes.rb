Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  get 'books/edit'
  get 'books/show'
  root :to => 'pages#home'
  resources :books, :only => [:index, :new, :create, :show]
  resources :authors
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
