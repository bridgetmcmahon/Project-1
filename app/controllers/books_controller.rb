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
  end

  def edit
    @book = Book.find params[:id]
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book
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
    @title = params[:title].split.map(&:capitalize).join(' ')
    @books = GoogleBooks.search(@title, {:count => 15}).select(&:isbn)
    render :results

    # book = Book.find_or_create_by(title: title) do |book|
    #   book.title = info["items"][0]["volumeInfo"]["title"]
    #   book.cover = info["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    #   info["items"][0]["volumeInfo"]["authors"].each do |a|
    #     author = Author.find_or_create_by(name: a)
    #     book.authors << author
    #   end
    #   book.synopsis = info["items"][0]["volumeInfo"]["description"]
    # end
    #
    # redirect_to book_path(book)
  end

  def add_by_isbn
    isbn = params[:isbn]
    book = GoogleBooks.search('isbn:' + isbn).first
    new_book = Book.find_or_create_by(isbn:isbn) do |b|
      b.title = book.title
      b.cover = book.image_link
      b.isbn = book.isbn
      b.synopsis = book.description
      book.authors.split(',').each do |a|
        author = Author.find_or_create_by(name: a)
        b.authors << author
      end
    end

    redirect_to book_path(new_book)
  end

  def destroy

  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis)
  end
end
