class Offer < ApplicationRecord
	belongs_to :activity_type
	belongs_to :outlet
  has_many :sessions

	def self.react_json
    all.map { |offer| offer.as_json.merge("image": offer.activity_image) }
	end

  def activity_image
    case activity_type.id
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
