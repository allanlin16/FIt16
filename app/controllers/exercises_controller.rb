class ExercisesController < ApplicationController
    def create
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(exercise_params)
        redirect_to workout_path(@workout)
      end
    
      private
        def exercise_params
          params.require(:exercise).permit(:exercise, :set, :rep)
        end

end
