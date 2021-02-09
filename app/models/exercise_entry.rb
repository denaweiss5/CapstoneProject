class ExerciseEntry < ApplicationRecord
    belongs_to :user
    validates :category, presence: true 
    validates :duration, presence: true 
    validates :calories_burned, presence: true 

end
