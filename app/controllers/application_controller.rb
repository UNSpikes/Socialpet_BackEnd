# API
# fgmendez
class ApplicationController < ActionController::API
    # Se incluye para poder usar el metodo respond_to que en API
    # no se encuentra por default
    include ActionController::MimeResponds
    include Knock::Authenticable
    
    def server_status
        status = "OK"
        render json: {
            status: status
        }
    end
 
end