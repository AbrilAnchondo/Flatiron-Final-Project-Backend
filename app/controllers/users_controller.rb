class UsersController < ApplicationController
    def index 
        @users = User.all 
        render json: @users
    end
    
    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
      end

      def edit
        @user = User.find(user_params)
        render json: @user
      end

      def update

      end

      def destroy

      end

      private
      def user_params
        params.require(:user).permit(:username, :description, :password_digest)
      end
end
