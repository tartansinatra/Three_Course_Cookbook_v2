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
    @category = Category.find_all
  end
end