class HeroPowersController < ApplicationController
    def index
        render json: HeroPower.all
    end
end
