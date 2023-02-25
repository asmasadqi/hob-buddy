puts "Cleaning up activity messages..."
ActivityMessage.destroy_all
puts "Activity messages cleaned"

puts "creating conversation feed for the Diving group activity"

diving_id = Activity.find_by(title: "Diving").id
m1 = ActivityMessage.create(
  content: "Hello everyone i hope yall are excited to learn Diving",
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: diving_id).id
)
puts "message created with id#{m1.id}"

m2 = ActivityMessage.create(
  content: "Hello everyone, my name is Mathilde I am currently in Sydney is everyone from around here?",
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: diving_id).id
)
puts "message created with id#{m2.id}"

m3 = ActivityMessage.create(
  content: "Hiiii my name is Ayla, actually i'm in australia yet. I'm arriving 5 days before our diving trip. Victoria do you think it will be alright? or is it too soon after my arrival. I'm scared i'd be too jetlagged lol",
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: diving_id).id
)
puts "message created with id#{m3.id}"

m4 = ActivityMessage.create(
  content: "Hey everyone, @Ayla you should be fine I think :). Where are you traveling from?",
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: diving_id).id
)
puts "message created with id#{m4.id}"
