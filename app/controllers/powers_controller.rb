class PowersController < ApplicationController
    def index
        render json: Power.all
    end
end
