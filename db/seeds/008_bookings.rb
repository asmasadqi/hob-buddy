puts "Cleaning up bookings..."
Booking.destroy_all
puts "Bookings cleaned"

puts "create 4 participants for Diving activity"
bk1 = Booking.create(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "julia.thierry@gmail.com").id
)
puts "Created booking with id#{bk1.id}"

bk2 = Booking.create(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id
)
puts "Created booking with id#{bk2.id}"

bk3 = Booking.create(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "ayla.moon@gmail.com").id
)
puts "Created booking with id#{bk3.id}"

bk4 = Booking.create(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "britney@leavemealone.com").id
)
puts "Created booking with id#{bk4.id}"

bk5 = Booking.create(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "Created booking with id#{bk5.id}"