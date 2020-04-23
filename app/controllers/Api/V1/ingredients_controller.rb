class Api::V1::IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:index, :show]

 
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end


  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
