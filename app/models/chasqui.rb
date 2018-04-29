class Chasqui < User
  def current_location
    locations.order(created_at: :desc).take
  end
end
