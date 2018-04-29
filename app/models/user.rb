class User < ApplicationRecord
  has_one :session
  has_many :locations, dependent: :destroy

  scope :active, -> { where(activity_status: 'active') }
  scope :inactive, -> { where.not(activity_status: 'active') }
end
