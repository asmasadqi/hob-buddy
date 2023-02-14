puts "Cleaning up chatrooms..."
Chatroom.destroy_all
puts "Chatrooms cleaned"

puts "Creating a chatroom for Kaori and Alexis"
ch1 = Chatroom.create!(
  user1_id: User.find_by(email: "kao_martin@gmail.com").id,
  user2_id: User.find_by(email: "alex_brun@hotmail.com").id
)
puts "Created chatroom for Kaori and Alex with id#{ch1.id}"

puts "Creating a chatroom for Victoria and Julia"
ch2 = Chatroom.create!(
  user1_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  user2_id: User.find_by(email: "julia.thierry@gmail.com").id
)
puts "Created chatroom for Victoria and Julia with id#{ch2.id}"

puts "Creating a chatroom for Kaori and Ayla"
ch3 = Chatroom.create!(
  user1_id: User.find_by(email: "ayla.moon@gmail.com").id,
  user2_id: User.find_by(email: "kao_martin@gmail.com").id
)
puts "Created chatroom for Kaori and Ayla with id#{ch3.id}"