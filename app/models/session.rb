class Session < ApplicationRecord
  belongs_to :user

  validates_uniqueness_of :user
end
