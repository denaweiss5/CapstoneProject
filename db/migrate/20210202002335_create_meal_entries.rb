class CreateMealEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_entries do |t|
      t.string :meal_time
      t.float :calories
      t.integer :fat
      t.integer :carbs
      t.integer :protein
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
