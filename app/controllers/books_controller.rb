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

  def delete_book_from_shelf
    book = Book.find params[:id]
    shelf = Shelf.find params[:shelf_id]
    shelf.books.destroy(book)
    redirect_to shelf
  end

  def search
  end

  def search_result
    title = params[:title].capitalize
    url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ title }"
    info = HTTParty.get url

    book = Book.find_or_create_by(title: title) do |book|
      book.title = params[:title].capitalize
      info["items"][0]["volumeInfo"]["authors"].each do |author|
        book.authors = author
      end
      book.synopsis = info["items"][0]["volumeInfo"]["description"]
    end

    # author = Author.find_or_create_by ...

    # @title = params[:title].capitalize
    # url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ @title }"
    # info = HTTParty.get url
    # @book_cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    # # @img = "<img src='#{book_cover}'alt='#{@title} cover'"
    # @author = info["items"][0]["volumeInfo"]["authors"].join(', ')
    # @description = info["items"][0]["volumeInfo"]["description"]
    redirect_to book_path(book)

  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis)
  end
end
