class TagsController < ApplicationController
    before_action :set_tag, only: %i[show update destroy]

    # GET /tags
    def index
        @tags = Tag.all
        render json: @tags, include: []
    end

    # GET /tags/:id
    def show
        if @tag.errors.any?
            render json: @tag.errors.messages
        else
            render json: @tag, include: []
        end
    end

    # POST
    def create
        @tag = Tag.new(tag_params)
        if @tag.save
            render json: @tag, include: []
        else
            render json: @tag.errors
        end
    end

    # PATCH/PUT
    def update
        if @tag.update(tag_params)
            render json: @tag, include: []
        else
            render json: @tag.errors
        end
    end

    # DELETE
    def destroy
        if @tag.destroy
            render json: @tag, include: []
        else
            render json: @tag.errors
        end
    end

    private

    def set_tag
        @tag = Tag.find(params[:id])
    end

    def tag_params
        params.require(:tag).permit( :tag_name )
    end
end
