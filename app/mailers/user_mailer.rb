class UserMailer < ApplicationMailer
    default from: 'socialpetunal@gmail.com'

    def welcome_email
        @user = params[:user]
        @url  = 'http://socialpet.com'
        mail(to: @user.email, subject: 'Bienvenido a SocialPet')
    end

    def updatepass_email
        @user = params[:user]
        @url  = 'socialpet.com/users/updatepass/'
        mail(to: @user.email, subject: 'Cambio de contraseña')
    end
    
end
