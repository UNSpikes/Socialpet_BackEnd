class BreedsController < ApplicationController
    before_action :set_breed, only: %i[show update destroy]

    # GET /breeds
    def index
        @breeds = Breed.all
        render json: @breeds, include: []
    end

    # GET /breeds/:id
    def show
        if @breed.errors.any?
            render json: @breed.errors.messages
        else
            render json: @breed, include: []
        end
    end

    # POST
    def create
        @breed = Breed.new(breed_params)
        if @breed.save
            render json: @breed, include: []
        else
            render json: @breed.errors
        end
    end

    # PATCH/PUT
    def update
        if @breed.update(breed_params)
            render json: @breed, include: []
        else
            render json: @breed.errors
        end
    end

    #DELETE
    def destroy
        if @breed.destroy
            render json: @breed, include: []
        else
            render json: @breed.errors
        end
    end

    # Retorna el numero de perros que existen en la breed_id
    # /breeds/:breed_id/num_of_dogs
    def num_of_dogs
        breed_id = params[:breed_id]
        num = Dog.num_dogs_by_breed(breed_id)
        render json: {
            num_of_dogs: num
        }
    end

    private

    def set_breed
        @breed = Breed.find(params[:id])
    end

    def breed_params
        #params.require(:breed).permit( :breed_type )
        params.permit( :breed_type )
    end
end
