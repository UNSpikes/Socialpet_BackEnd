class BlogsController < ApplicationController
    before_action :authenticate_user, only: [:index, :show, :create, :update, :destroy]

    # GET /blogs
    def index
        @blogs = Blog.order(date: :desc).all
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
            #@user = User.new @blog.getUser( @blog.user_id ).attributes.except('id')
            #@user = @blog.getUser( @blog.user_id ).dup
            #@blog.user.email
            #dogs = @user.get_dogs()
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
            render json: @blog, include: [:tags]
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

    # /blogs/:blog_id/info/
    def get_info
        blog = Blog.find(params[:blog_id])
        tags = blog.get_tags()
        render json: {
            blog: blog,
            tags: tags
        }
    end

    private

    def blog_params
        #params.require(:blog).permit(:title, :content, :image, :date, :num_likes, :user_id, :location_id)
        params.permit(:title, :content, :image, :date, :num_likes, :user_id, :location_id, :urlblog)
    end
end
