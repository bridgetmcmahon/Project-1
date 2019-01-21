class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to book
  end

  def show
    @book = Book.find params[:id]
    # raise 'hell'
  end

  def edit

  end

  def update

  end

  def add_book_to_shelf
    book = Book.find params[:id]
    shelf = Shelf.find params[:shelf_id]
    shelf.books << book
  end

  def delete_book_from_shelf
    book = Book.find params[:id]
    shelf = Shelf.find params[:shelf_id]
    shelf.books.destroy(book)
    redirect_to shelf
  end

  def search
  end

  def search_result
    title = params[:title].split.map(&:capitalize).join(' ')
    url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ title }"
    info = HTTParty.get url

    # raise "hell"
    # add check for book search
    book = Book.find_or_create_by(title: title) do |book|
      book.title = info["items"][0]["volumeInfo"]["title"]
      book.cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
      info["items"][0]["volumeInfo"]["authors"].each do |a|
        author = Author.find_or_create_by(name: a)
        book.authors << author
      end
      book.synopsis = info["items"][0]["volumeInfo"]["description"]
    end

    redirect_to book_path(book)
  end

  def destroy

  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis)
  end
end
