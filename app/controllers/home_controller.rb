class HomeController < ApplicationController
    before_action :authenticate_user,  only: [:auth]

    def index
        render json: { message: "Welcome to a simple API "}
    end

    def auth
        render json: { status: 200, msg: "You are currently Logged-in as #{current_user}" }
    end
end
