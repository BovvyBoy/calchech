class MealSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :name, :dish, :dish_type, :origin, :cuisine, :diet, :description, :image, :cooking_instructions, :calories

  has_many :recipes
  has_many :ingredients, through: :recipes
end
