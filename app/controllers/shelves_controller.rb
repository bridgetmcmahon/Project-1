class ShelvesController < ApplicationController
  def index

  end

  def new
    @shelf = Shelf.new
  end

  def create
    shelf = Shelf.create shelf_params
    shelf.user_id = @current_user.id
    shelf.save
    redirect_to shelves_path
  end

  def show
    @shelf = Shelf.find params[:id]
  end

  def edit
    @shelf = Shelf.find params[:id]
  end

  def update
    shelf = Shelf.find params[:id]
    shelf.update shelf_params
    redirect_to shelf
  end

  def destroy
    shelf = Shelf.find params[:id]
    shelf.destroy
    redirect_to shelves_path
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name, :user_id)
  end
end
