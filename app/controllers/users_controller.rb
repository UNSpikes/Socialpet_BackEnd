class UsersController < ApplicationController
    # GET
    def index
        @users = User.all
        respond_to do |format|
            format.json {render json: @users, status:200}
        end
    end

    # POST
    def create
        @users = User.new(params_user)
        if @users.save
            respond_to do |format|
                format.json {render json: @users, status:201}
            end
        else
            respond_to do |format|
                format.json {render json: @users.errors, status:201}
            end
        end
    end

    # Parametros recibidos para la creacion de un usuario nuevo
    # en el metodo create
    def params_user
        params.permit( :name, :last_name, :age, :phone_number, :additional_info, :country, :city, :password, :email )
    end
    
    # GET show
    def show
        @users = User.find(params[:id])
        respond_to do |format|
            format.json {render json: @users, status:201}
        end
    end
    
    # PATCH 
    # Modifica el password
    def update
        @users = User.find(params[:id])
        if @users.update_attributes(params_patch_user)
            respond_to do |format|
                format.json {render json: @users, status:202}
            end
        else
            respond_to do |format|
                format.json {render json: @users.errors, status:202}
            end
        end
    end
    
    # Parametros que recibe el PATCH en el metodo update
    def params_patch_user
        params.permit( :password )
    end

    # DELETE
    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            respond_to do |format|
                format.json {render json: @user, status:200}
            end
        else
            respond_to do |format|
                format.json {render json: @user.errors, status:200}
            end
        end
    end

    # Eliminar comentario
end

