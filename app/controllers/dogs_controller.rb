class DogsController < ApplicationController
    before_action :set_dog, only: %i[show update destroy]

    # GET /dogs
    def index
        @dogs = Dog.all
        render json: @dogs, include: []
    end

    # GET /dogs/:id
    def show
        if @dog.errors.any?
            render json: @dog.errors.messages
        else
            render json: @dog, include: []
        end
    end

    # POST
    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            render json: @dog, include: []
        else
            render json: @dog.errors
        end
    end

    # PATCH/PUT
    def update
        if @dog.update(dog_params)
            render json: @dog, include: []
        else
            render json: @dog.errors
        end
    end

    # DELETE
    def destroy
        if @dog.destroy
            render json: @dog, include: []
        else
            render json: @dog.errors
        end
    end

    # dogs/:dog_id/info
    #def get_info
    #    dog = Dog.find(params[:dog_id])
    #    owner = dog.get_owner()
    #    breed = dog.get_breed()
    #    render json:{
    #        dog: dog,
    #        owner: owner,
    #        breed: breed
    #    }
    #end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end
    
    def dog_params
        params.require( :dog ).permit( :name, :age, :sex, :description, :interests, :user_id, :breed_id, :location_id )
        #params.permit( :name, :age, :sex, :description, :interests, :user_id, :breed_id, :location_id )
    end
end