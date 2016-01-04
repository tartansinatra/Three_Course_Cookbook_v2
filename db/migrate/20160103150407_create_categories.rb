class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :category
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
