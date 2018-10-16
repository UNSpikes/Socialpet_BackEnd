class BreedsController < ApplicationController
    # GET
    def index
        @breeds = Breed.all
        respond_to do |format|
            format.json { render json: @breeds, status:200 }
        end
    end

    # POST
    def create
        @breeds = Breed.new(params_breeds)
        if @breeds.save
          respond_to do |format|
              format.json { render json: @breeds, status:201 }
          end
        else
            respond_to do |format|
                format.json { render json: @breeds.errors, status:201 }
            end
        end
    end

    # Parametros recibidos para la creacion de una nueva breed
    # en el metodo create
    def params_breeds 
        params.permit( :breed_type )
    end
    
    # GET show por id
    def show
        @breed = Breed.find(params[:id])
        respond_to do |format|
            format.json { render json: @breed, status:200 }
        end
    end

    # GET por nombre
    # Regresa la raza que conincida con el nombre (breed_type)
    def showforname
        @breed = Breed.where( breed_type: params[:breed_type] )
        respond_to do |format|
            format.json { render json: @breed, status:200 }
        end
    end

    #DELETE por id
    def destroy
        @breed = Breed.find(params[:id])
        if @breed.destroy
            respond_to do |format|
                format.json { render json: @breed, status:201 }
            end
        else
            respond_to do |format|
                format.json { render json: @breed.errors, status:201 }
            end
        end
    end
    
    # DELETE por name
    def destroyforname
        @breed = Breed.where( breed_type: params[:breed_type] )
        
        if @breed.destroy_all
            respond_to do |format|
                format.json { render json: @breed, status:201 }
            end
        else
            respond_to do |format|
                format.json { render json: @breed.errors, status:201 }
            end
        end
    end

end
