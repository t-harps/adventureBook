class Offer < ApplicationRecord
	belongs_to :activity_type
	belongs_to :outlet
  has_many :sessions
end
