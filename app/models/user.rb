class User < ApplicationRecord
    has_many :exercise_entries
    has_many :meal_entries
    has_many :weight_entries
    has_many :recipes
    has_secure_password

    validates :email, uniqueness: true 
    validates :email, presence: true 
end
