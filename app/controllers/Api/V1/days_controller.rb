class Api::V1::DaysController < ApplicationController
  before_action :set_day, only: [:show, :update]
  before_action :set_plan, only: [:create, :update]

  def index
    @plan = Plan.find(params[:plan_id])
  
    render json: @plan.days
  end

  def show
    render json: @day
  end

  def create
    @day = @plan.days.build(day_params)

    if @day.save
      render json: @plan, status: :created
    else
      render json: @plan.errors, status: :unprocessable_entity
    end
  end

  def update
    if @day.update(day_params)
      render json: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    @plan = Plan.find(@day.plan_id)
    render json: @plan
  end

  private

    def set_plan
      @plan = Plan.find(params[:plan_id])
    end

    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:plan_id, :name, :total_calories)   
    end
end
