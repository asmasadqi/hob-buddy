puts "Cleaning up Matches..."
Match.destroy_all
puts "Matches cleaned"

puts 'Creating 5 fake matches...'

puts "Matching Koari with Alexi"
match1 = Match.create(
  status: 1,
  user_requester_id: User.find_by(email: "kao_martin@gmail.com").id ,
  user_receiver_id: User.find_by(email: "alex_brun@hotmail.com").id
)
puts "match created with ID#{match1.id}"

puts "Ayla requested to match Koari"
match2 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "ayla.moon@gmail.com").id ,
  user_receiver_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "match created with ID#{match2.id}"

puts "Paul requested to match Victoria"
match3 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "paulvolle@gmail.com").id ,
  user_receiver_id: User.find_by(email: "victoria.semblat@gmail.com").id
)
puts "match created with ID#{match3.id}"

puts "Victoria matched Julia"
match4 = Match.create(
  status: 1,
  user_requester_id: User.find_by(email: "victoria.semblat@gmail.com").id ,
  user_receiver_id: User.find_by(email: "julia.thierry@gmail.com").id
)
puts "match created with ID#{match4.id}"

puts "Paul requested to match britney"
match5 = Match.create(
  status: 0,
  user_requester_id: User.find_by(email: "paul-portier@gmail.com").id ,
  user_receiver_id: User.find_by(email: "britney@leavemealone.com").id
)
puts "match created with ID#{match5.id}"