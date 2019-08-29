class CommentsController < ApplicationController

    def index
        @comments = Comment.all 
        render json: @comments
    end


    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def create
        @comment = Comment.creat(comment_params)
        render json: @comment
    end

    def edit
        @comment = Comment.find(comment_params)
        render json: @comment
    end

    private
    def comment_params
        params.require(:comment).permit(:following_id, :maker_id, :receiver_id, :content, :id)
    end
end
