class SightingsController < ApplicationController
   def index
    sightings = Sighting.all
<<<<<<< HEAD
    render json: SightingSerializer.new(sighting).to_serialized_json
   end
=======
    render json: sightings.to_json(:include => {
      :bird => {:only => [:name, :species]},
      :location => {:only => [:latitude, :longitude]}
    }, :except => [:updated_at])
  end
>>>>>>> d67efaf42a1c94b041361f3322aadd32dfda4ae2
    
    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
