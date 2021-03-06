class BooksController < ApplicationController

  def index
    @books = Book.all.shuffle.take(30)
  end

  def filter_genre
    @books = Book.all

    @selected_books = []
    @books.each do |book|
      book.genres.each do |genre|
        if genre.name == (params[:genres].to_s)
          @selected_books << book
        end
      end
    end
    @books = @selected_books
    render :index
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
    if @book.ratings.present?
      ratings_array = []
      @book.ratings.each do |rating|
        ratings_array << rating.score.to_f
      end
      @average_rating = (ratings_array.sum / ratings_array.count)
    end
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
    @current_user.shelves.each do |shelf|
      shelf.books.destroy(book)
    end
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
      @books = GoogleBooks.search(@title, {:count => 20}).select(&:isbn).select(&:image_link)
      render :results
    else
      search_term = 'inauthor:' + @author
      @books = GoogleBooks.search(search_term, {:count => 30}).select(&:isbn).select(&:image_link).select(&:authors).select(&:title)

      @books.each do |book|
        unless book.authors == @author
          @books.delete(book)
        end
      end
      render :results
    end
  end

  def add_by_isbn
    isbn = params[:isbn]
    book = GoogleBooks.search('isbn:' + isbn).first

      unless book.title.nil? || book.image_link.nil? || book.isbn.nil? || book.authors.nil?
      new_book = Book.find_or_create_by(isbn:isbn) do |b|
        b.title = book.title
        b.cover = book.image_link
        b.isbn = book.isbn

        book.categories.split(',').each do |g|
          genre = Genre.find_or_create_by(name: g)
          b.genres << genre
        end

        b.synopsis = book.description
        book.authors.split(',').each do |a|
          author = Author.find_or_create_by(name: a)
          b.authors << author
        end
      end
    end

    redirect_to book_path(new_book)
  end

  def add_rating
    book = Book.find params[:id]
    score = params[:rating].to_i

    if book.ratings.exists?(user_id: @current_user.id)
      book.ratings.destroy(book.ratings.where(:user_id => @current_user.id))
    end

    rating = Rating.create
    rating.user_id = @current_user.id
    rating.book_id = params[:id]
    rating.score = score
    rating.save
    redirect_to book
  end

  def destroy
    check_for_admin
    book = Book.find params[:id]
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :cover, :synopsis, :genre, :rating)
  end
end
