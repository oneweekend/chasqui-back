class Location < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
end
