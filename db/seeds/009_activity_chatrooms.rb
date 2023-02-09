puts "Cleaning up activity chatrooms..."
ActivityChatroom.destroy_all
puts "Activity chatrooms cleaned"


puts "Creating chatroom for diving activity"
ch1 = ActivityChatroom.create(
  activity_id: Activity.find_by(title: "Diving").id
)
puts "Diving activity chatroom created #{ch1.id}"