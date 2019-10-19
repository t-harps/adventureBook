class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  
  validates :email, presence: true, uniqueness: true

  def preferred_offers
  	count_types_booked = bookings.joins(:activity_type).group("activity_type_id").count("bookings.id")
  	max_booked_type = count_types_booked.max_by{|k,v| v}[0]
  	order_by_type = Offer.send(:sanitize_sql_array, [ 'case when activity_type_id = %d then 0 else 1 end', max_booked_type ])
  	Offer.order(order_by_type).order(:created_at)
  end
end
