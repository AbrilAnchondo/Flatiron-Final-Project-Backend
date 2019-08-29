class SpeciesController < ApplicationController
    def index 
        @species = Species.all 
        render json: Species.all
    end

    
end
