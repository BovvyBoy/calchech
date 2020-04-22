class Meal < ApplicationRecord
    belongs_to :day
    has_many :recipes
    has_many :ingredients, through: :recipes
    
end
