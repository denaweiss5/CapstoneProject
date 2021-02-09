class MealEntry < ApplicationRecord
    belongs_to :user
    validates :name, presence: true 
    validates :calories, presence: true 
    validates :fat, presence: true 
    validates :carbs, presence: true 
    validates :protein, presence: true 
end
