class Booking < ApplicationRecord
  belongs_to :session
  belongs_to :user
  has_one :offer, through: :session
  has_one :outlet, through: :offer
  has_one :activity_type, through: :offer
end
