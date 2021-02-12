class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.integer :calories
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.text :instructions
      t.text :ingredients

      t.timestamps
    end
  end
end
