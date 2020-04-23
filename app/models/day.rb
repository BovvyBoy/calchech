class Day < ApplicationRecord
    belongs_to :plan
    has_many :meals

    def update_total_calories(meal)
        self.total_calories += meal.calories
        self.save
    end
    
end
