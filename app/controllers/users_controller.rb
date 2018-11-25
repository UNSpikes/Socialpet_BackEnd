require 'fb_token'

class UsersController < ApplicationController
    before_action :set_user, only: %i[show update destroy]
    #before_action :authenticate_user, only: [ :index, :show, :update, :destroy, :get_info]

    # GET /users
    def index
        @users = User.all
        render json: @users, include: []
    end

    # GET /users/:id
    def show
        if @user.errors.any?
            render json: @user.errors.messages
        else
            render json: @user, include: []
        end
    end

    # POST
    def create
        @user = User.new(user_params)
        if @user.save
            # Envio email de forma asincronica
            # Se deberia cambiar para produccion? 
            # UserMailer.with(user: @user).welcome_email.deliver_now
            respond_to do |format|
                format.json {render json: @user, status:201}
            end
        else
            respond_to do |format|
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    require 'json'
    def current
        puts JSON.pretty_generate(current_user)
        #info = [:name, :last_name, :age, :phone_number, :additional_info, :country, :city, :email]
        #render json: current_user, fields: info, status:200
    end

    def create_fb_user
        user = User.new(user_params)
        accessTokenJson = params.permit(:accessToken)
        accessTokenValue = accessTokenJson['accessToken']

        fb_api = FbTokenApi.new()
        token_content = fb_api.check_fb_token(accessTokenValue)['data']['is_valid']

        if token_content
            if User.exists?(email: user.mail)
                puts "User already registered"
            else
                if user.save
                    respond_to do |format|
                        format.json { render json: user, status:201 }
                    end
                else
                    respond_to do |format|
                        format.json { render json: user.errors, status: :unprocessable_entity }
                    end
                end
            end
        else
            render json: {status: "error", message: "invalid facebook token"}
        end
    end


    # PATCH/PUT
    def update
        if @user.update(user_params)
            render json: @user, include: []
        else
            render json: @user.errors
        end
    end

    # DELETE
    def destroy
        if @user.destroy
            render json: @user, include: []
        else
            render json: @user.errors
        end
    end

    # /users/:user_id/info/
    def get_info
        usr = User.find(params[:user_id])
        dogs = usr.get_dogs()
        blogs = usr.get_blogs()
        render json: {
            user: usr,
            dogs: dogs,
            blogs: blogs
        }
    end

    # /users/:user_id/num_of_dogs
    def num_of_dogs
        user_id = params[:id]
        num = Dog.num_dogs_by_user(user_id)
        render json: {
            num_of_dogs: num
        }
    end

    # /users/countDogs
    def countDogs
        contador = Dog.numDogs()

        respond_to do |format|
            format.json { render json: contador, status:200 }
        end
        
    end

    # UPDATE: /users/updatepass/:id
    def updatepass
        @users = User.find( params[:id] )
        if @users.update_attributes( user_params_pass )
            # Envio email de forma asincronica
            UserMailer.with(user: @users).updatepass_email.deliver_now

            respond_to do |format|
                format.json { render json: @users, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @users.errors, status:200 }
            end
        end
    end
    

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        #params.require( :user ).permit( :name, :last_name, :age, :phone_number, :additional_info, :country, :city, :password, :email )
        params.permit( :name, :last_name, :age, :phone_number, :additional_info, :country, :city, :password, :email )
    end

    # Para update password
    def user_params_pass
        params.permit( :password_digest )
    end

end

