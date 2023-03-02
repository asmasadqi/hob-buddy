puts "Cleaning up Matches..."
puts "Matches cleaned"

puts 'Creating 5 fake matches...'


# Matches
puts "Kaori matched with Alexis"
match1 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "kao_martin@gmail.com").id ,
  user_receiver_id: User.find_by(email: "alex_brun@hotmail.com").id
)
puts "match created with ID#{match1.id}"

puts "Ayla matched with Kaori"
match2 = Match.create(
  status: 1,
  user_requester_id: User.find_by(email: "ayla.moon@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match2.id}"

puts "Victoria matched Kaori"
match3 = Match.create(
  status: 1,
  user_requester_id: User.find_by(email: "victoria.semblat@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match3.id}"


# Requests

puts "Tommy R requested to match Kaori"
match4 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "paul-portier@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match4.id}"

puts "Paul P requested to match Kaori"
match5 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "paul-portier@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match5.id}"

puts "Roxanne requested to match Kaori"
match6 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "roxane.deloche@hotmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match6.id}"

puts "Mathilde requested to match Kaori"
match7 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "mathildefrances@hiphip.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match7.id}"

puts "Paul V requested to match Kaori"
match8 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "paulvolle@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match8.id}"

puts "Werner requested to match Kaori"
match9 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "werner.schmidt@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match9.id}"

puts "Emmanuel requested to match Kaori"
match10 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "manu.macron@elysee.fr").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match10.id}"
