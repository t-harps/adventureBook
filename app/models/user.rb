class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  
  validates :email, presence: true, uniqueness: true

  def preferred_offers
  	types_booked = bookings.joins(:activity_type).group("activity_type_id").count("bookings.id")
  	by_type = Offer.send(:sanitize_sql_array, [ 'case when activity_type_id = %d then 0 else 1 end', types_booked.max_by{|k,v| v}[0] ])
  	Offer.order(by_type).order(:created_at)
  end
end
