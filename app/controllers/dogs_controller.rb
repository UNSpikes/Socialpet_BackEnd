class DogsController < ApplicationController

    # GET
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    # GET show por id del dog
    def show
        @dogs = Dog.where( id: params[:id] )
        respond_to do |format|
            format.json { render json: @dogs, status:200 }
        end
    end
    
    # GET show por id del dog y del dueño
    def showcomplete
        @dogs = Dog.where( id: params[:id], user_id: params[:user_id] )
        respond_to do |format|
            format.json { render json: @dogs, status:200 }
        end
    end
    
    # POST 
    def create
        @dogs = Dog.new(params_dog)
        if @dogs.save
          respond_to do |format|
            format.json {render json: @dogs, status:201}
          end
        else
            respond_to do |format|
                format.json {render json: @dogs.errors, status:201}
              end
        end
    end

    # Parametros recibidos para la creacion de un dog nuevo
    # en el metodo create
    def params_dog
        params.permit( :name, :age, :sex, :description, :interests, :user_id, :breed_id )
    end

    # PATCH
    def update
        @dogs = Dog.find(params[:id])
        if @dogs.update_attributes( params_patch_dog )
            respond_to do |format|
                format.json {render json: @dogs, status:200}
            end
        else
          frespond_to do |format|
            format.json {render json: @dogs.errors, status:200}
          end
        end
    end
    
    # Parametros recibidos para update (PATCH) de un dog
    def params_patch_dog
        params.permit( :name, :age, :sex, :description, :interests )
    end

    # DELETE
    # Destruye el perro de un usuario
    def destroycomplete
        @dog = Dog.where( id: params[:id], user_id: params[:user_id] )
        
        if @dog.destroy_all
            respond_to do |format|
                format.json { render json: @dog, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @dog.errors, status:200 }
            end
        end
    end
    
end