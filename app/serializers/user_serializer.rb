class UserSerializer < ActiveModel::Serializer
  attributes :id, :type, :latitude, :longitude, :phone, :activity_status, :name
end
