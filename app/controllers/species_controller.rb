class SpeciesController < ApplicationController
    

    def index
       if authenticated? # see application_controller.rb
          species = Species.all
          render json: species
       else
         tell_user_to_go_away! # see application_controller.rb
        end
      end

    
end
