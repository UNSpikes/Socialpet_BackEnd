class BlogMailer < ApplicationMailer
    default from: 'socialpetunal@gmail.com'

    def blogcreate_email
        @user = params[:user]
        @blog = params[:blog.urlblog]
        mail(to: @user.email, subject: 'Ha creado un nuevo Blog')
    end
end
