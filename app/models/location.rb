class Location < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  validates_presence_of :latitude, :longitude

  after_create :broadcast

  def broadcast
    ActionCable.server.broadcast 'locations_channel', self
  end
end
