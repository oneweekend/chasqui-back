class User < ApplicationRecord
  has_one :session
  has_many :locations, foreign_key: 'user_id'
end
