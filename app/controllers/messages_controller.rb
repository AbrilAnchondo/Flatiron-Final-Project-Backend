class MessagesController < ApplicationController

    def index
        @messages = Message.all 
        render json: @messages
    end


    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create
        user = user_who_is_logged_in
        if user.valid?
            @message = Message.create(message_params)
            render json: @message
        end
    end

    def edit
        @message = Message.find(message_params)
        render json: @message
    end

    private
    def message_params
        params.require(:message).permit(:following_id, :maker_id, :receiver_id, :content)
    end
end
