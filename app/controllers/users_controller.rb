class UsersController < ApplicationController
    def index
        users = User.all
        respond_to do |format|
            format.html {render html: "Hola mundo", status:200}
        end
    end
end
