class HeroPowersController < ApplicationController
    
    # POST /hero_powers
    def create
        hero_power = HeroPower.create!(hero_power_params)
        if hero_power
            render json: hero_power.hero, serializer: OneHeroPowerSerializer
        else
            render json: { error: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
    end
  
    private
      
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
