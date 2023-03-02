puts "Cleaning up activity messages..."
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


puts "creating conversation feed for the Surf group activity"
surf_id = Activity.find_by(title: "Surf").id
m5 = ActivityMessage.create(
  content: "Heyy nice to meet you all ! Are you guys ready???!!!",
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: surf_id).id
)
puts "message created with id#{m5.id}"

m6 = ActivityMessage.create(
  content: "Hi :) I'm soooo down!! What time do you want to meet?",
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: surf_id).id
)
puts "message created with id#{m6.id}"

m7 = ActivityMessage.create(
  content: "Hey hey! Yesss!!! I'll be free anytime!",
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: surf_id).id
)
puts "message created with id#{m7.id}"

m8 = ActivityMessage.create(
  content: "Hello ! I'm so excited !! Let's say 6AM at the beach?",
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: surf_id).id
)
puts "message created with id#{m8.id}"


puts "creating conversation feed for the Bouledering group activity"
bouldering_id = Activity.find_by(title: "Bouldering").id
m9 = ActivityMessage.create(
  content: "Heyy I was gonna go around 4pm so it'll be less crowded. Anyone can join?",
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: bouldering_id).id
)
puts "message created with id#{m9.id}"

m10 = ActivityMessage.create(
  content: "Hey! Yes, sounds good to me :)",
  user_id: User.find_by(email: "kao_martin@gmail.co").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: bouldering_id).id
)
puts "message created with id#{m10.id}"

m11 = ActivityMessage.create(
  content: "I'll join you a bit later after work!",
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: bouldering_id).id
)
puts "message created with id#{m11.id}"

m12 = ActivityMessage.create(
  content: "Hello ! Perfect, let's do that! What about a drink afterwards? I can reserve :)",
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  activity_chatroom_id: ActivityChatroom.find_by(activity_id: bouldering_id).id
)
puts "message created with id#{m12.id}"
