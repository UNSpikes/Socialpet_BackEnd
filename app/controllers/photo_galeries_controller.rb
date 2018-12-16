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
    # recibe el identificador unico del perro
    # photo_galeries/showdogid/:dog_id
    def showdogid
        @photo_galeries = PhotoGalery.where( dog_id: params[:dog_id] )
        respond_to do |format|
            format.json { render json: @photo_galeries, status:200 }
        end
    end
    
    # POST
    # Crea una nueva imagen y la asocia con un dog
    # Si esta asociada con un dog, no debe estar asociada con un blog
    # /photo_galeries/addog/:dog_id
    def create
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

    # Argumentos de crear foto
    def params_dog
        #params.require( :photo_galery ).permit( :image, :dog_id, :user_id, :blog_id )
        params.permit( :image, :dog_id, :user_id, :blog_id )
    end

    # DELETE
    # Elimina todas las imagenes de un perro
    # Solo deberia ser una, si solo se guarda la foto de perfil
    # photo_galeries/destroydogidall/:dog_id
    def destroydogidall
        @photo_galeries = PhotoGalery.where( dog_id: params[:dog_id] )

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
    # photo_galeries/:id
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
