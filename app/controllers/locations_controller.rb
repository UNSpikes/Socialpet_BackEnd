class LocationsController < ApplicationController
    before_action :set_location, only: %i[show update destroy]

    # GET /locations
    def index
        @locations = Location.all
        render json: @locations, include: []
    end

    # GET /locations/:id
    def show
        if @location.errors.any?
            render json: @location.errors.messages
        else
            render json: @location, include: []
        end
    end

    # POST
    def create
        @location = Location.new(location_params)
        if @location.save
            render json: @location, include: []
        else
            render json: @location.errors
        end
    end

    # PATCH/PUT
    def update
        if @location.update(location_params)
            render json: @location, include: []
        else
            render json: @location.errors
        end
    end

    # DELETE
    def destroy
        if @location.destroy
            render json: @location, include: []
        else
            render json: @location.errors
        end
    end

    private

    def set_location
        @location = Location.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:latitude, :longitude, :city)
    end
end
