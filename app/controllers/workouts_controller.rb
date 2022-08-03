class WorkoutsController < ApplicationController
  def index
    #fetch all workouts
    @workouts = Workout.all
  end

  #fetch a single workout
  def show 
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])

    if @workout.update(workout_params)
      redirect_to @workout
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def workout_params
      params.require(:workout).permit(:name, :description)
    end
end
