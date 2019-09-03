class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users
    end

    def show
        user_id = params[:id]
        if authorized?(user_id) # see application_controller.rb
          user = User.find(user_id)
          render json: user, include: :species

        else
          tell_user_to_go_away! # see application_controller.rb
        end
      end
    
      def create
        user = User.create(user_params)
        if user.valid?
          render json: auth_response_json(user) # see application_controller.rb
        else
          render json: { errors: user.errors.full_messages }
        end 
      end
    
      private
    
      def user_params
        params.permit(:username, :password)
      end
    

   
end

 #   def edit
    #     @user = User.find(user_params)
    #     render json: @user
    #   end
