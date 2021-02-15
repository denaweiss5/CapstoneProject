class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.integer :calories
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.text :directions
      t.text :ingredients
      t.string :image
      t.integer :recipe_id

      t.timestamps
    end
  end
end
