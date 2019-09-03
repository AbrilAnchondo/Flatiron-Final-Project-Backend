class FollowingsController < ApplicationController

    def index
        @followings = Following.all 
        render json: @followings
    end

    def show
        @following = Following.find(params[:id])
        render json: @following
    end

    def create
        user_id = User.find(params[:user_id])
        if authorized?(user_id)
          @following = Following.create(following_params)
            render json: @following
        else 
            tell_user_to_go_away!
        end
    end

   
    private

    def following_params
        params.permit(:user_id, :species_id)
    end
end
