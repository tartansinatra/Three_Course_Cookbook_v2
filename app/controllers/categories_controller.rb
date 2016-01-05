class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to(categories_path)
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:category, :category_id)
  end


end