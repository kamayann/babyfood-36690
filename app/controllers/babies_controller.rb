class BabiesController < ApplicationController

  def index
  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(baby_params)
    if @baby.save
      redirect_to babies_path
    else
      render :new
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:nickname, :birth_day)
  end
end
