class HerosController < ApplicationController
    #GET     /heros
    def index
        render json: Hero.all
    end

    #GET     /heros/:id
    def show
        hero = Hero.find_by(id: params[:id])
        if hero
            render json: hero, serializer: OneHeroPowerSerializer
        else
            render json: { error:"Hero not found" }, status: :not_found
        end
    end
end
