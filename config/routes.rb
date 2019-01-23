Rails.application.routes.draw do
  root :to => 'pages#home'

  # BOOKS #
  get '/books/search' => 'books#search'
  get '/books/search_results' => 'books#search_result'
  post '/books/addbyisbn/:isbn' => 'books#add_by_isbn', :as => 'add_by_isbn'
  get '/books/genres/:genres' => 'books#filter_genre', :as => :view_genre
  resources :books

  # AUTHORS #
  resources :authors, :only => [:index, :show, :edit, :update]

  # USERS #
  resources :users, :only => [:new, :index, :create, :show, :edit, :update]

  # SHELVES #
  resources :shelves
  post '/books/:id/shelf' => 'books#add_book_to_shelf', :as => :book_to_shelf
  delete '/books/:id/shelf' => 'books#delete_book_from_shelf'

  # SESSIONS #
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
