class BlogTagMediatorController < ApplicationController
    before_action :set_blogTag, only: %i[show update destroy]

    # GET /blog_tag_mediator
    def index
        @blogTags = BlogTagMediator.all
        render json: @blogTags, include: []
    end

    # GET /blog_tag_mediator/:id
    def show
        if @blogTag.errors.any?
            render json: @blogTag.errors.messages
        else
            render json: @blogTag, include: []
        end
    end

    # POST
    def create
        @blogTag = BlogTagMediator.new(blogTag_params)
        if @blogTag.save
            render json: @blogTag, include: []
        else
            render json: @blogTag.errors
        end
    end

    # PATCH/PUT
    def update
        if @blogTag.update(blogTag_params)
            render json: @blogTag, include: []
        else
            render json: @blogTag.errors
        end
    end

    # DELETE
    def destroy
        if @blogTag.destroy
            render json: @blogTag, include: []
        else
            render json: @blogTag.errors
        end
    end

    private

    def set_blogTag
        @blogTag = BlogTagMediator.find(params[:id])
    end

    def blogTag_params
        params.require(:blog_tag_mediator).permit(:blog_id, :tag_id)
    end
end
