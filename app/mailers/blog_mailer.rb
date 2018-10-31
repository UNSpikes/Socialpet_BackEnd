class BlogMailer < ApplicationMailer
    default from: 'socialpetunal@gmail.com'
    /
    def blogcreate_email( user, blog)
        @user = user
        @blog = blog
        mail(to: @user.email, subject: 'Ha creado un nuevo Blog')
    end
    /

    def blogcreate_email
        @user = params[:user]
        #@blog = params[:blog]
        
        if @user.nil?
            
        else
            puts "Usuario"
            puts @user.id
            puts "Usuario Fin"
            mail(to: @user.email, subject: 'Ha creado un nuevo Blog') 
        end
    end
end
