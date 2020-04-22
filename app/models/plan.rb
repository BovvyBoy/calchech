class Plan < ApplicationRecord
    has_many :days
    has_many :meals, through: :days
end
