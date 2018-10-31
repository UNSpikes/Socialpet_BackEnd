class BlogsController < ApplicationController
    before_action :set_blog, only: %i[show update destroy]

    # GET /blogs
    def index
        @blogs = Blog.all
        render json: @blogs, include: []
    end

    # GET /blogs/:id
    def show
        if @blog.errors.any?
            render json: @blog.errors.messages
        else
            render json: @blog, include: []
        end
    end

    # POST
    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            # envio email
            @user = User.where( id: @blog.user_id )
            #BlogMailer.with(user: @user, blog: @blog).blogcreate_email.deliver_now
            #BlogMailer.with(user: @user).blogcreate_email.deliver_now
            #BlogMailer.blogcreate_email( @user, @blog ).deliver_now
            render json: @blog, include: []
        else
            render json: @blog.errors
        end
    end

    # PATCH/PUT
    def update
        if @blog.update(blog_params)
            render json: @blog, include: []
        else
            render json: @blog.errors
        end
    end

    # DELETE
    def destroy
        if @blog.destroy
            render json: @blog, include: []
        else
            render json: @blog.errors
        end
    end

    private

    def set_blog
        @blog = Blog.find(params[:id])
    end

    def blog_params
        #params.require(:blog).permit(:title, :content, :image, :date, :num_likes, :user_id, :location_id)
        params.permit(:title, :content, :image, :date, :num_likes, :user_id, :location_id, :urlblog)
    end
end
