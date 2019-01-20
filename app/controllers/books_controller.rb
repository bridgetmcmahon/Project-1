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

  def add_book_to_shelf
    book = Book.find params[:id]
    shelf = Shelf.find params[:shelf_id]
    shelf.books << book
  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis)
  end
end
