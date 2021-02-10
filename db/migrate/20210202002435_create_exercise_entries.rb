class CreateExerciseEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_entries do |t|
      t.string :category
      t.date :date
      t.float :duration
      t.float :calories_burned
      t.integer :user_id

      t.timestamps
    end
  end
end
