puts "Cleaning up one to one messages..."
puts "messages cleaned"

puts "creating conversation feed for Kaori"

kao = User.find_by(email: "kao_martin@gmail.com")
ayla = User.find_by(email: "ayla.moon@gmail.com")
chatroom_id = 0
Chatroom.all.each do |chatroom|
  if chatroom.other_user(kao) == ayla.id
    chatroom_id = chatroom.id
  end
end
m1 = Message.create(
  content: "Hello everyone i hope yall are excited to learn Diving",
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  chatroom_id: chatroom_id
)
puts "message created with id#{m1.id} in chatroom #{chatroom_id}"

m2 = Message.create(
  content: "Hiiii my name is Ayla, nice to meet you!",
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  chatroom_id: chatroom_id
)
puts "message created with id#{m2.id} in chatroom #{chatroom_id}"
