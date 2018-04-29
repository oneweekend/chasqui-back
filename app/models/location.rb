class Location < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  def broadcast
    ActionCable.server.broadcast 'feed_channel', 'test'
  end
end
