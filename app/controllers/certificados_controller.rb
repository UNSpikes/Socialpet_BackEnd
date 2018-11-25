class CertificadosController < ApplicationController
    # GET 
    def index
        @certificados = Certificado.all
        respond_to do |format|
            format.json { render json: @certificados, status:200 }
        end
    end

    # POST
    def create
        @certificados = Certificado.new( params_certificados )
        if @certificados.save
            respond_to do |format|
                format.json {render json: @certificados, status:201}
              end
        else
            respond_to do |format|
                format.json {render json: @certificados.errors, status:201}
              end
        end
    end

    # Parametros que se reciben para "create" un nuevo certificado
    def params_certificados
        params.requiere( :certificado ).permit( :ruta, :tipo, :dog_id, :user_id )
        #params.permit( :ruta, :tipo, :dog_id, :user_id )
    end

    # GET show por id del certificado
    def show
        @certificados = Certificado.where( id: params[:id] )
        respond_to do |format|
            format.json { render json: @certificados, status:200 }
        end
    end
    

    # PATCH
    def update
        @certificados = Certificado.find(params[:id])
        if @certificados.update_attributes( params_patch_certificados )
            respond_to do |format|
                format.json {render json: @certificados, status:200}
            end
        else
          frespond_to do |format|
            format.json {render json: @certificados.errors, status:200}
          end
        end
    end
    
    # Parametros recibidos para update (PATCH) de un certificado
    def params_patch_certificados
        params.permit( :ruta )
    end

    # DELETE
    # Elimina el certificado de un perro
    def destroycertificado
        @certificados = Certificado.where( id: params[:id], dog_id: params[:dog_id], user_id: params[:user_id] )
        
        if @certificados.destroy_all
            respond_to do |format|
                format.json { render json: @certificados, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @certificados.errors, status:200 }
            end
        end
    end
    
    # DELETE
    # Elimina el certificado de un perro
    def destroyall
        @certificados = Certificado.where( dog_id: params[:dog_id], user_id: params[:user_id] )
        
        if @certificados.destroy_all
            respond_to do |format|
                format.json { render json: @certificados, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @certificados.errors, status:200 }
            end
        end
    end
    
end
