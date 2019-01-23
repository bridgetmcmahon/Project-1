class ShelvesController < ApplicationController
  def index
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

  private
  def shelf_params
    params.require(:shelf).permit(:name, :user_id)
  end
end
