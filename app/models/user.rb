class User < ApplicationRecord
  has_one :session
  has_many :locations
end