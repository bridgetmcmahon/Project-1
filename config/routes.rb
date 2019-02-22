Rails.application.routes.draw do
  root :to => 'pages#home'

  # BOOKS #
  get '/books/search' => 'books#search'
  get '/books/search_results' => 'books#search_result'
  post '/books/addbyisbn/:isbn' => 'books#add_by_isbn', :as => :add_by_isbn
  get '/books/genres/:genres' => 'books#filter_genre', :as => :view_genre
  post '/books/:id/rating' => 'books#add_rating', :as => :add_rating
  resources :books

  # AUTHORS #
  resources :authors, :only => [:index, :show]

  # USERS #
  resources :users, :except => [:destroy]

  # SHELVES #
  resources :shelves, :except => [:new, :create, :destroy]
  post '/books/:id/shelf' => 'books#add_book_to_shelf', :as => :book_to_shelf
  delete '/books/:id/shelf' => 'books#delete_book_from_shelf'

  # SESSIONS #
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
