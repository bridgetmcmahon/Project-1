Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/books/search' => 'books#search'
  post '/books/search' => 'books#search_result'
  resources :books
  resources :authors
  resources :users, :only => [:new, :create, :show, :edit, :update]
  resources :shelves
  post '/books/:id/shelf' => 'books#add_book_to_shelf', :as => :book_to_shelf
  delete '/books/:id/shelf' => 'books#delete_book_from_shelf'
  resources :authors, :only => [:index, :show, :edit, :update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
