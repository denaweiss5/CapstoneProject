class ExerciseEntriesController < ApplicationController

    protect_from_forgery unless: -> { request.format.json? }

    def index
        exercise_entrys = ExerciseEntry.all
        render json: exercise_entrys, except: [:created_at, :updated_at]
    end

    def show
        exercise_entry = ExerciseEntry.find_by_id(params[:id])
        render json: exercise_entry
    end

    def create
        exercise_entry = ExerciseEntry.new(exercise_entry_params)
        
        if exercise_entry.save 
            render json: exercise_entry, except: [:created_at, :updated_at]
        else 
            render json: {error: exercise_entry.errors.full_messages}
        end
    end
    
    def update
        exercise_entry = ExerciseEntry.find_by_id(params[:id])
        if exercise_entry.update(exercise_entry_params)
            render json: exercise_entry
        else 
            render json: {error: exercise_entry.errors.full_messages}
        end
    end

    def destroy
        exercise_entry = ExerciseEntry.find_by_id(params[:id])
        if exercise_entry.destroy
            render json: exercise_entry
        else
            render json: {error: "Something went wrong, cannot delete exercise_entry."}
        end
    end

    private 

    def exercise_entry_params
        params.require(:exercise_entry).permit(:category, :duration, :calories_burned, :user_id)
    end
end
