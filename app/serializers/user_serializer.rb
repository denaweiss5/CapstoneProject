class UserSerializer < ActiveModel::Serializer 
    attributes :id, :email, :name
    has_many :weight_entries
    has_many :meal_entries
    has_many :exercise_entries 
    
    
    end