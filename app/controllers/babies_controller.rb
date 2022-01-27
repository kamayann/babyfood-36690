class BabiesController < ApplicationController
  before_action :move_index, :only=>[:show, :edit]

  def index
    @babies = current_user.babies
  end

  def new
    @baby = Baby.new
    @baby.users << current_user
  end

  def create
    @baby = Baby.new(baby_params)
    binding.pry
    if @baby.save
      redirect_to baby_path(@baby.id)
    else
      render :new
    end
  end

  def show
    @baby = Baby.find(params[:id])
  end

  def edit
    
  end

  def update
    @baby = Baby.find(params[:id])
    if @baby.update(baby_params)
      redirect_to baby_path(@baby.id)
    else
      render :edit
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:nickname, :birth_day, user_ids:[])
  end

  def move_index
    @baby = Baby.find(params[:id])
    @baby.users.ids.each do |baby_id|
      unless current_user.id == baby_id
      redirect_to babies_path
    end
  end
end

end
