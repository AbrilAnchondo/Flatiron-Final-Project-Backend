class CommentsController < ApplicationController

    def index
        @comments = Comment.all 
        render json: @comments, include: :user
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment, include: :user
    end


    def create
        
        user = user_who_is_logged_in
        if user.valid?
            @comment = Comment.create(comment_params)
            render json: @comment, include: :user
        else
            tell_user_to_go_away
        end
    end

    private

    def comment_params
        params.permit(:user_id, :species_id, :content)
    end

   

end
