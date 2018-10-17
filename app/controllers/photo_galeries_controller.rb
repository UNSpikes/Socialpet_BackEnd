class PhotoGaleriesController < ApplicationController
    # GET
    # Obtiene todas la imagenes guardadas
    def index
        @photo_galeries = PhotoGalery.all
        render json: @photo_galeries
    end

    # GET
    # Busqueda por id de la fotografia
    # debe retornar solo una
    def show
        @photo_galeries = PhotoGalery.find( params[:id] )
        respond_to do |format|
            format.json { render json: @photo_galeries, status:200 }
        end
    end

    # GET
    # Busqueda las fotografias de un perro
    # recibe el identificador unico del perro que esta compuesto
    # por id del perro y de su dueno
    # deberia retornar una, pero aun no es asi, ya que se pueden insertar varias
    def showdogid
        @photo_galeries = PhotoGalery.where( dog_id: params[:dog_id], user_id: params[:user_id] )
        respond_to do |format|
            format.json { render json: @photo_galeries, status:200 }
        end
    end
    
    # POST
    # Crea una nueva imagen y la asocia con un dog
    # Si esta asociada con un dog, no debe estar asociada con un blog
    def createdogid
        @photo_galeries = PhotoGalery.new(params_dog)

        if @photo_galeries.save
            respond_to do |format|
              format.json {render json: @photo_galeries, status:201}
            end
          else
              respond_to do |format|
                  format.json {render json: @photo_galeries.errors, status:201}
                end
          end
        
    end

    # Argumentos de createdogid
    def params_dog
        params.permit( :image, :dog_id, :user_id )
    end

    # DELETE
    # Elimina todas las imagenes de un perro
    # Solo deberia ser una, si solo se guarda la foto de perfil
    def destroydogidall
        @photo_galeries = PhotoGalery.where( dog_id: params[:dog_id], user_id: params[:user_id] )

        if @photo_galeries.destroy_all
            respond_to do |format|
                format.json { render json: @photo_galeries, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @photo_galeries.errors, status:200 }
            end
        end
    end
    
    # DELETE
    # Elimina una imagen 
    def destroy
        @photo_galeries = PhotoGalery.find(params[:id])

        if @photo_galeries.destroy
            respond_to do |format|
                format.json { render json: @photo_galeries, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @photo_galeries.errors, status:200 }
            end
        end
    end
    
end
