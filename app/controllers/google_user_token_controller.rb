class GoogleUserTokenController < ApplicationController
     # To login do a POST request to /google_user_token
    # where the json to receive has to be:
    # { "auth": { "email": "email to authenticate" } }
    # This will return a 201 code is the authentication was 
    # correct and 404 if there was a problem with the autentication
    # (this error is by the side of the client - the data isn't correct)
     before_action :authenticate
    
    def create
      #puts JSON.pretty_generate(auth_token)
      render json: auth_token
    end
  
    private
  
    def authenticate
      unless entity.present?
      	#puts "u there?"
        raise Knock.not_found_exception_class
      end
      #puts "no"
    end
  
    def auth_token
      #puts "this is good"
      if entity.respond_to? :to_token_payload
        Knock::AuthToken.new payload: entity.to_token_payload
      else
        Knock::AuthToken.new payload: { sub: entity.id }
      end
    end
  
    def entity
        @entity ||= 
            if GoogleService.valid_token?(auth_params[:tokenId])
                data = GoogleService.fetch_data(auth_params[:tokenId])
                #puts JSON.pretty_generate(data)
                User.create_google_user(data)
            end
    end
  
    def auth_params
      params.require(:auth).permit :tokenId
    end
  end