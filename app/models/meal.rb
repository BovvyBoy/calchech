class Meal < ApplicationRecord
    has_many :day_meals
    has_many :days, through: :day_meals
    has_many :recipes
    has_many :ingredients, through: :recipes
    
end
