class ActivityType < ApplicationRecord
	has_many :offers
	def image
		case id
		when 1
		  "surfer.svg"
		when 2
		  "mountain-bike.svg"
		when 3
		  "carabiner.svg"
		else
		  ""
		end
	end
end
