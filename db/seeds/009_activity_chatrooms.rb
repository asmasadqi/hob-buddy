puts "Cleaning up activity chatrooms..."
puts "Activity chatrooms cleaned"


puts "Creating chatroom for diving activity"
ch1 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Diving").id
)
puts "activity chatroom created #{ch1.id}"


puts "Creating chatroom for Fishing activity"
ch2 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Fishing").id
)
puts "activity chatroom created #{ch2.id}"

puts "Creating chatroom for Fortnite activity"
ch3 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Fortnite").id
)
puts "activity chatroom created #{ch3.id}"

puts "Creating chatroom for Tennis activity"
ch4 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Tennis").id
)
puts "activity chatroom created #{ch4.id}"

puts "Creating chatroom for Fortnite activity"
ch5 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Fortnite").id
)
puts "Diving activity chatroom created #{ch5.id}"

puts "Creating chatroom for City tour activity"
ch6 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "City Tour").id
)
puts "activity chatroom created #{ch6.id}"

puts "Creating chatroom for Water polo activity"
ch7 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Water Polo").id
)
puts "activity chatroom created #{ch7.id}"

puts "Creating chatroom for Ashtanga yoga zen activity"
ch8 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Ashtanga Yoga Zen").id
)
puts "activity chatroom created #{ch8.id}"

puts "Creating chatroom for Surf activity"
ch9 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Surf").id
)
puts "activity chatroom created #{ch9.id}"

puts "Creating chatroom for Fitness / Dynamo activity"
ch10 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Fitness / Dynamo").id
)
puts "activity chatroom created #{ch10.id}"

puts "Creating chatroom for Cooking Asian food activity"
ch11 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Cooking Asian food").id
)
puts "activity chatroom created #{ch11.id}"

puts "Creating chatroom for Travel to Egypt activity"
ch12 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Travel to Egypt").id
)
puts "activity chatroom created #{ch12.id}"

puts "Creating chatroom for Cycling activity"
ch13 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Cycling").id
)
puts "activity chatroom created #{ch13.id}"

puts "Creating chatroom for Bouldering activity"
ch14 = ActivityChatroom.create!(
  activity_id: Activity.find_by(title: "Bouldering").id
)
puts "activity chatroom created #{ch14.id}"
