
require 'httparty'
 class FbTokenApi
    def check_fb_token(accessToken)
        access_token = accessToken
        app_id = "321705795079517"
        app_secret = "2a219446f101c750af854a83b4f00f86"
        url = "https://graph.facebook.com/debug_token?input_token=#{access_token}&access_token=#{app_id}|#{app_secret}"
        
        response = HTTParty.get(url)
    end
end 