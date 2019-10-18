class Outlet < ApplicationRecord
  has_secure_password
  has_many :offers
end
