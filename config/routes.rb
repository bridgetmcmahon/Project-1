Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :books, :only => [:index, :new, :create, :show]
  resources :authors
  resources :users, :only => [:new, :create, :show, :edit, :update]
  resources :shelves
  post '/books/:id/shelf' => 'books#add_book_to_shelf', :as => :book_to_shelf
  resources :authors, :only => [:index, :show]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
