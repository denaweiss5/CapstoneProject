class MealEntriesController < ApplicationController

    protect_from_forgery unless: -> { request.format.json? }

    def index
        meal_entries = MealEntry.all
        render json: meal_entries, except: [:created_at, :updated_at]
    end

    def show
        meal_entry = MealEntry.find_by_id(params[:id])
        render json: meal_entry
    end

    def create
        meal_entry = MealEntry.new(meal_entry_params)
        
        if meal_entry.save 
            render json: meal_entry, except: [:created_at, :updated_at]
        else 
            render json: {error: meal_entry.errors.full_messages}
        end
    end
    
    def update
        meal_entry = MealEntry.find_by_id(params[:id])
        if meal_entry.update(meal_entry_params)
            render json: meal_entry
        else 
            render json: {error: meal_entry.errors.full_messages}
        end
    end

    def destroy
        meal_entry = MealEntry.find_by_id(params[:id])
        if meal_entry.destroy
            render json: meal_entry
        else
            render json: {error: "Something went wrong, cannot delete meal_entry."}
        end
    end

    private 

    def meal_entry_params
        params.require(:meal_entry).permit(:meal_time, :date, :calories, :fat, :carbs, :protein, :name, :user_id)
    end
end
