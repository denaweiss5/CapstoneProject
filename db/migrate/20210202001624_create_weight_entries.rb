class CreateWeightEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :weight_entries do |t|
      t.float :weight
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
