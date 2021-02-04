class WeightEntriesController < ApplicationController

    protect_from_forgery unless: -> { request.format.json? }

    def index
        weight_entries = WeightEntry.all
        render json: weight_entries, except: [:created_at, :updated_at]
    end

    def show
        weight_entry = WeightEntry.find_by_id(params[:id])
        render json: weight_entry
    end

    def create
        weight_entry = WeightEntry.new(weight_entry_params)
        
        if weight_entry.save 
            render json: weight_entry, except: [:created_at, :updated_at]
        else 
            render json: {error: weight_entry.errors.full_messages}
        end
    end
    
    def update
        weight_entry = WeightEntry.find_by_id(params[:id])
        if weight_entry.update(weight_entry_params)
            render json: weight_entry
        else 
            render json: {error: weight_entry.errors.full_messages}
        end
    end

    def destroy
        weight_entry = WeightEntry.find_by_id(params[:id])
        if weight_entry.destroy
            render json: weight_entry
        else
            render json: {error: "Something went wrong, cannot delete weight_entry."}
        end
    end

    private 

    def weight_entry_params
        params.require(:weight_entry).permit(:weight, :date, :user_id)
    end
end
