class SpeciesController < ApplicationController
    

    def index
       if authenticated? # see application_controller.rb
          species = Species.all
          render json: species, include: :followings
       else
         tell_user_to_go_away! # see application_controller.rb
        end
      end

      def show
        if authenticated?
            species = Species.find(params[:id])
            render json: species, include: [:followings, :comments, :users]
         end
      end

     

      # example to create associations, you have to send the token otherwise you cannot make that association
      # creating a species_user
      # def species_user
      #    if authenticated?
      #       UserSpecies.create(user: user_who_is_logged_in, species_id: params[:id])
      #       #user_who_is_logged_in.user_species.create(species_id: 2)
      #    end
      # end

    
end
