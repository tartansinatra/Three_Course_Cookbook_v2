class AddIndexToRecipes < ActiveRecord::Migration
  def change
    add_index :recipes, :category_id
  end
end
