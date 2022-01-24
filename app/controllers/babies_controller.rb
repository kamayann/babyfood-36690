class BabiesController < ApplicationController
  before_action :move_index, :only=>[:edit]

  def index
    @babies = Baby.where(user_id: current_user.id)
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

  def edit
    
  end

  def update
    @baby = Baby.find(params[:id])
    if @baby.update(baby_params)
      redirect_to babies_path
    else
      render :edit
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:nickname, :birth_day).merge(user_id: current_user.id)
  end

  def move_index
    @baby = Baby.find(params[:id])
    unless current_user.id == @baby.user_id
      redirect_to babies_path
    end
  end

end
