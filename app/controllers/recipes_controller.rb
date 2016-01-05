class RecipesController < ApplicationController
  
  before_action :load_recipe, except:[:index, :new, :create]

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
  end

  def edit
  end

  def update
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    recipe.destroy
    redirect_to(recipes_path)
  end


  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :image, :category_id)
  end

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end

end