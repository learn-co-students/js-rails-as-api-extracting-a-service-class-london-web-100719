class SightingSerializer

def initialize(object)
  @sighting = object
end

def to_serialized_json
  @sighting.to_json(
    :include => { 
      :bird => {
        :only => [
          :name,
          :species
        ]
      },
      :location => {
        :only => [
          :latitude,
          :longitude
        ]
      }
  },
  :except => [
    :undated_at
  ]
)

end