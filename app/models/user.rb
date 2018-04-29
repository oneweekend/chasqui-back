class User < ApplicationRecord
  has_one :session
  has_many :locations

  scope :active, -> { where(activity_status: 'active') }
  scope :inactive, -> { where.not(activity_status: 'active') }
end
