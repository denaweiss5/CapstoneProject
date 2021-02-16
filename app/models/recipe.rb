class Recipe < ApplicationRecord
    belongs_to :user

    validates :name, uniqueness: true

end
