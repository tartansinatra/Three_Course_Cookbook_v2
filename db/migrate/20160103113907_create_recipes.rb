class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :name
      t.string :description
      t.string :instructions
      t.string :image
      t.text :category

      t.timestamps null: false
    end
  end
end
