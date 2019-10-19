class Session < ApplicationRecord
  belongs_to :offer
  has_many :bookings
end
