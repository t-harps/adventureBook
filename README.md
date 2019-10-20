# README

Activity booking website landing page with tailored recommendations for Users who have made a booking before. If a User has made a booking then offers are ordered by their preferred Activity Type.

Front end uses html with embedded ruby and bootstrap styling. The activity type filter is written in React.

Models: User, Outlet, Offer, ActivityType, Booking, Session.

Each **Outlet** can have several **Offers**. Each **Offer** has one **Activity Type** and can have several **Sessions**. Each **Session** has a specific date and number of spaces and can have several **Bookings**. A **Booking** belongs to a **Session** and a **User**.

* Ruby version - 2.6.3

* Stack - Ruby on Rails, Html, Sass, Javscript, Jquery, React, SQL, Heroku, Yarn

# adventureBook
