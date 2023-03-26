class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found

    # GET /powers
    def index
        render json: Power.all
    end

    # GET /powers/:id
    def show
        power = find_power
        if power
            render json: power
        else
            not_found
        end
    end

    # PATCH /powers/:id
    def update
        power = find_power
        if power
            if power.update(power_params)
                render json: power
            else
                render json: { errors: "validation errors" }, status: :unprocessable_entity
            end
        else
            not_found
        end
    end

    private

    def find_power
        Power.find_by(id:params[:id])
    end

    def not_found
        render json: { error:"Power not found" }, status: :not_found
    end

    def power_params
        params.permit(:name, :description)
    end
end