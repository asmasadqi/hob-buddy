puts "Cleaning up one to one messages..."
Message.destroy_all
puts "messages cleaned"

puts "creating conversation feed for Koari"

chatroom = Chatroom.find_by("user1_id = ? OR user2_id = ?", User.find_by(email: "kao_martin@gmail.com").id, User.find_by(email: "ayla.moon@gmail.com").id)
m1 = Message.create(
  content: "Hello everyone i hope yall are excited to learn Diving",
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  chatroom_id: chatroom.id
)
puts "message created with id#{m1.id}"

m2 = Message.create(
  content: "Hiiii my name is Ayla, nice to meet you!",
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  chatroom_id: chatroom.id
)
puts "message created with id#{m2.id}"
