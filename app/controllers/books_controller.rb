class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    check_for_admin
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
    redirect_to shelf
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
    @author = params[:author].split.map(&:capitalize).join(' ')

    if @title.present?
      @books = GoogleBooks.search(@title, {:count => 20}).select(&:isbn)
      render :results
    else
      search_term = 'inauthor:' + @author
      @books = GoogleBooks.search(search_term, {:count => 20}).select(&:isbn)
      render :results
    end
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
    check_for_admin
    book = Book.find params[:id]
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis)
  end
end
