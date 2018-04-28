class Chasqui < ApplicationRecord
  has_many :locations

  def current_location
    locations.order(created_at: :desc).take
  end
end
