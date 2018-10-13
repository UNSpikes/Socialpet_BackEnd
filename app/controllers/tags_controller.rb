class TagsController < ApplicationController
    # GET
    def index
        @tags = Tag.all
        respond_to do |format|
            format.json { render json: @tags, status:200 }
        end
    end

    # GET show
    def show
        @tags = Tag.find(params[:id])
        respond_to do |format|
            format.json {render json: @tags, status:201}
        end
    end
    
    # POST
    def create
        @tags = Tag.new( params_tags )
        if @tags.save
            respond_to do |format|
                format.json { render json: @tags, status:201 }
            end
        else
            respond_to do |format|
                format.json { render json: @tags.errors, status:201 }
            end
        end
    end
    
    # Parametros necesarios para create un nuevo tag
    def params_tags
        params.permit( :tag_name )
    end

    # PATCH and PUT
    def update
        @tag = Tag.find( params[:id] )
        if @tag.update_attributes( params_tags )
            respond_to do |format|
                format.json { render json: @tag, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @tag.errors, status:200 }
            end
        end
    end

    # DELETE
    def destroy
        @tag = Tag.find(params[:id])
        if @tag.destroy
            respond_to do |format|
                format.json { render json: @tag, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @tag.errors, status:200 }
            end
        end
    end
    
    # DELETE for name
    def destroyforname
        @tag = Tag.where( tag_name: params[:tag_name] )
        if @tag.destroy_all
            respond_to do |format|
                format.json { render json: @tag, status:200 }
            end
        else
            respond_to do |format|
                format.json { render json: @tag.errors, status:200 }
            end
        end
    end

end
