class FollowingsController < ApplicationController

    def index
        @followings = Following.all 
        render json: @followings
    end

    def show
        user_id = params[:id]
        if authorized?(user_id)
            @following = Following.find(params[:id])
            render json: @following, include: :comments
        end
    end

    def create
        #byebug
        user = user_who_is_logged_in
        if user.valid?
            @following = Following.create(following_params)
                render json: @following
        else
            tell_user_to_go_away!
        end   
    end

    def destroy
        user = user_who_is_logged_in
        if user.valid?
            @following = Following.find(params[:id])
            @following.destroy
            render json: @following
        else
            tell_user_to_go_away!
        end

    end

   
    private

    def following_params
        params.permit(:user_id, :species_id)
    end

    def user_params
        params.permit(:username, :password, :id)
    end
end
