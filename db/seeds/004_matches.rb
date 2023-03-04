puts "Cleaning up Matches..."
puts "Matches cleaned"

puts 'Creating 5 fake matches...'


# Matches
puts "Kaori matched with Alexis"
match1 = Match.create!(
  status: 1,
  user_requester: User.find_by(email: "kao_martin@gmail.com") ,
  user_receiver: User.find_by(email: "alex_brun@hotmail.com")
)
puts "match created with ID#{match1}"

puts "Ayla matched with Kaori"
match2 = Match.create!(
  status: 1,
  user_requester: User.find_by(email: "ayla.moon@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match2}"

puts "Victoria matched Kaori"
match3 = Match.create!(
  status: 1,
  user_requester: User.find_by(email: "victoria.semblat@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match3}"


# Requests

puts "Tommy R requested to match Kaori"
match4 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "tommy.reece@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match4}"

puts "Paul P requested to match Kaori"
match5 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "paul-portier@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match5}"

puts "Roxanne requested to match Kaori"
match6 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "roxane.deloche@hotmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match6}"

puts "Mathilde requested to match Kaori"
match7 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "mathildefrances@hiphip.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match7}"

puts "Paul V requested to match Kaori"
match8 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "paulvolle@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match8}"

puts "Werner requested to match Kaori"
match9 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "werner.schmidt@gmail.com") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match9}"

puts "Emmanuel requested to match Kaori"
match10 = Match.create!(
  status: 0,
  user_requester: User.find_by(email: "manu.macron@elysee.fr") ,
  user_receiver: User.find_by(email: "kao_martin@gmail.com")
)
puts "match created with ID#{match10}"
