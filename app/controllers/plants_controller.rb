class PlantsController < ApplicationController
    def index 
        # byebug
        plants = Plant.all
        render json: plants, except: [:created_at, :updated_at]
    end

    def show
        # byebug
        plant = Plant.find_by(id: params[:id])
        render json: plant, except: [:created_at, :updated_at]
    end

    def create
        # byebug
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: 201
    end
end
