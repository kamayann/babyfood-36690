class MealsController < ApplicationController
  def index
  end

  def new
    @meal = Meal.new
  end

  def show
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
