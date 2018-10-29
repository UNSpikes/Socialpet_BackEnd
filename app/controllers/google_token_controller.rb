class GoogleTokenController < ApplicationController

	before_action :authenticate

	def create
		render json: auth_token, status: :created
	end

	private

	def authenticate
		unless entity.present?
			raise Knock.not_found_exception_class
		end
	end

	def auth_token
		if entity.respond_to? :to_token_payload
			Knock::AuthToken.new payload: entity.to_token_payload
		else
			Knock::AuthToken.new payload: {sub: entity.id}
		end
	end

	def entity
		@entity ||=
			if GoogleService.valid_token?(auth_params[:tokenId])
				data = GoogleService.fetch_data(auth_params[:tokenId])
				retrieved_user = User.find_by_email(data["email"])
				if !retrieved_user
					retrieved_user = User.create_google_usr(data)
				end
				retrieved_user
			end
	end

	def auth_params
		params.require(:auth).permit :tokenId
	end

end
