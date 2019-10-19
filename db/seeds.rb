ActivityType.create(name: "Surf")
ActivityType.create(name: "Bike")
ActivityType.create(name: "Climb")

password = BCrypt::Password.create("password")

Outlet.create(name: "Cornwall Surf Centre", email: "corn@email.com", phonenumber: "1234567890", latitude: 50.8266, longitude: 4.5437, password_digest: password)
Outlet.create(name: "Activity Place", email: "place@email.com", phonenumber: "1234567890", latitude: 50.8266, longitude: 4.5437, password_digest: password)
User.create!(username: 'Tim', email: 'tim@email.com', password_digest: password)
User.create!(username: 'Dan', email: 'dom@email.com', password_digest: password)

Offer.create(name: "Beginner Surfing Lesson", description: "The ideal class to start your surfing career!", price: 24.99, activity_type_id: 1, outlet_id: 1)
Offer.create(name: "Advanced Surfing Sesh", description: "You're good, but you could still be better, surf with our best instructors!", price: 19.99, activity_type_id: 1, outlet_id: 1)
Offer.create(name: "Intermediate Surfing", description: "Want to start getting on some bigger waves? This is the course for you!", price: 19.99, activity_type_id: 1, outlet_id: 1)
Offer.create(name: "Biking is the Best", description: "Let's get on a bike and go as fast as possible downhill!", price: 44.99, activity_type_id: 2, outlet_id: 2)
Offer.create(name: "Climb Crags", description: "Want to be higher than you currently are? This is the offer for you.", price: 23.99, activity_type_id: 3, outlet_id: 2)
Offer.create(name: "Extreme Downhill", description: "This is the fastest offer available, only for the strong willed!", price: 44.99, activity_type_id: 2, outlet_id: 2)

Session.create(offer_id: 1, date: DateTime.new(2019,9,30,10,30), spaces: 10)
Session.create(offer_id: 1, date: DateTime.new(2019,9,25,10,0), spaces: 10)
Session.create(offer_id: 2, date: DateTime.new(2019,9,20,10,45), spaces: 10)
Session.create(offer_id: 3, date: DateTime.new(2019,9,30,12,30), spaces: 10)
Session.create(offer_id: 4, date: DateTime.new(2019,9,30,15,15), spaces: 10)
Session.create(offer_id: 5, date: DateTime.new(2019,9,30,15,15), spaces: 10)
Session.create(offer_id: 6, date: DateTime.new(2019,9,30,15,15), spaces: 10)


Booking.create(user_id: 1, session_id: 1)
Booking.create(user_id: 1, session_id: 2)
Booking.create(user_id: 1, session_id: 3)
Booking.create(user_id: 2, session_id: 4)
Booking.create(user_id: 2, session_id: 5)
Booking.create(user_id: 2, session_id: 6)
Booking.create(user_id: 2, session_id: 7)
