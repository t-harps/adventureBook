class Outlet < ApplicationRecord
  has_secure_password
  has_many :offers
  has_many :sessions, through: :offers
  has_many :bookings, through: :sessions
end
