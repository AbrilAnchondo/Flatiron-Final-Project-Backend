class SpeciesController < ApplicationController
    

    def index
       if authenticated? # see application_controller.rb
          species = Species.all
          render json: species, :include => [:users, :followings =>{:include => :user}, :comments => {:include => :user}]
          
       else
         tell_user_to_go_away! # see application_controller.rb
        end
      end

      def show
        if authenticated?
            species = Species.find(params[:id])
            render json: species, :include => [:users, :followings =>{:include => :user}, :comments => {:include => :user}]
         end
      end
end
