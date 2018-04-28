class Location < ApplicationRecord
  belongs_to :chasqui

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
end
