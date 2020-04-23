class DaySerializer < ActiveModel::Serializer
  attributes :id, :plan_id, :name, :total_calories

  has_many :meals
end
