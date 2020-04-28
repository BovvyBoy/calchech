class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration

  has_many :days
  has_many :meals, through: :days
end
