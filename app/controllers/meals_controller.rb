class MealsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_baby
  before_action :set_meal, only: [:edit, :update, :destroy]

  def index
    @meals = Meal.all.includes(:baby)
  end

  def new
    @meal = Meal.new
  end

  def create
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
    if @meal.update(meal_params)
      redirect_to baby_meals_path(@baby)
    else
      render :edit
    end
  end

  def destroy
    if @meal.destroy
      redirect_to baby_meals_path(@baby)
    else
      render :index
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:food, :meal_date, :meal_time)
  end

  def set_baby
    @baby = Baby.find(params[:baby_id])
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end

end
