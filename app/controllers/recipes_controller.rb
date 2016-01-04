class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipes = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    redirect_to(recipes_path)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end


  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :image, :category_id)
  end


end