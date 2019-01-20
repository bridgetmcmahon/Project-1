class ShelvesController < ApplicationController
  def index

  end

  def new
    @shelf = Shelf.new
  end

  def create
    shelf = Shelf.create shelf_params
    redirect_to user_path(@current_user)
  end

  def show
    @shelf = Shelf.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
    shelf = Shelf.find params[:id]
    shelf.destroy
    redirect_to shelf_path
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name, :user_id)
  end
end
