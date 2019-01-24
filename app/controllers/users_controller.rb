class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login, :only => [:show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new user_params

    if user.save
      session[:user_id] = user.id
      user.shelves.create(:name => "Read")
      user.shelves.create(:name => "Currently Reading")
      user.shelves.create(:name => "Want to Read")
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.image = req["public_id"]
      user.save
    end

    redirect_to user
  end

  def show
    @user = User.find params[:id]
    if @user.id != @current_user.id
      redirect_to user_path(@current_user)
    end
    @total_books = 0
    @user.shelves.each do |shelf|
      shelf.books.each do |book|
        @total_books += 1
      end
    end
    @books_read = @user.shelves.find_by(:name => "Read").books.count
    @rated = @user.ratings.count
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
