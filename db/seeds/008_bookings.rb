puts "Cleaning up bookings..."
puts "Bookings cleaned"

puts "create 4 participants for Diving activity"
bk1 = Booking.create!(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "julia.thierry@gmail.com").id
)
puts "Created booking with id#{bk1.id}"

bk2 = Booking.create!(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id
)
puts "Created booking with id#{bk2.id}"

bk3 = Booking.create!(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "ayla.moon@gmail.com").id
)
puts "Created booking with id#{bk3.id}"

bk4 = Booking.create!(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "britney@leavemealone.com").id
)
puts "Created booking with id#{bk4.id}"

bk5 = Booking.create!(
  activity_id: Activity.find_by(title: "Diving").id,
  user_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "Created booking with id#{bk5.id}"


puts "create 3 participants for Surf activity"
bk6 = Booking.create!(
  activity_id: Activity.find_by(title: "Surf").id,
  user_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "Created booking with id#{bk5.id}"

bk7 = Booking.create!(
  activity_id: Activity.find_by(title: "Surf").id,
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id
)
puts "Created booking with id#{bk5.id}"

bk8 = Booking.create!(
  activity_id: Activity.find_by(title: "Surf").id,
  user_id: User.find_by(email: "alex_brun@hotmail.com").id
)
puts "Created booking with id#{bk8.id}"

puts "create 4 participants for Bouldering activity"
bk9 = Booking.create!(
  activity_id: Activity.find_by(title: "Bouldering").id,
  user_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "Created booking with id#{bk9.id}"

bk10 = Booking.create!(
  activity_id: Activity.find_by(title: "Bouldering").id,
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id
)
puts "Created booking with id#{bk10.id}"

bk11 = Booking.create!(
  activity_id: Activity.find_by(title: "Bouldering").id,
  user_id: User.find_by(email: "paulvolle@gmail.com").id
)
puts "Created booking with id#{bk11.id}"

bk12 = Booking.create!(
  activity_id: Activity.find_by(title: "Bouldering").id,
  user_id: User.find_by(email: "manu.macron@elysee.fr").id
)
puts "Created booking with id#{bk12.id}"
