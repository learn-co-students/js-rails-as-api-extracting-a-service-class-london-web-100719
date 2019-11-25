class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        SightingSerailizer.new(sightings).to_serialized_json
    end

    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
