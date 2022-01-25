class MealsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @meals = Meal.all.includes(:baby)
  end

  def new
    @meal = Meal.new
    @baby = Baby.find(params[:baby_id])
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
    @baby = Baby.find(params[:baby_id])
    @meal = Meal.find(params[:id])
  end

  def update
    @baby = Baby.find(params[:baby_id])
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to baby_meals_path(@baby)
    else
      render :edit
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:food, :meal_date, :meal_time)
  end

end
