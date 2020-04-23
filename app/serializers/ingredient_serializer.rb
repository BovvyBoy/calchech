class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :calories

  has_many :recipes
  has_many :meals, through: :recipes
end
