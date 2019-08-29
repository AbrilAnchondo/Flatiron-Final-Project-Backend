class FollowingsController < ApplicationController
    def show
        @following = Following.find(params[:id])
    end

    def create
        @following = Following.create(following_params)
        render json: @Following
    end

    def edit
        @following = Comment.find(following_params)
        render json: @following
    end

    private

    def following_params
        params.require(:following).permit(:user_id, :species_id)
    end
end
