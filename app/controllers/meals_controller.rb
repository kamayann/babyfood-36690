class MealsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @meals = Meal.all.includes(:baby)
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @meal = @baby.meals.new(meal_params)
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @meal = @baby.meals.new(meal_params)
    if @meal.save
      redirect_to baby_meals_path(@baby)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  def meal_params
    params.require(:meal).permit(:food, :meal_date, :meal_time)
  end

end
