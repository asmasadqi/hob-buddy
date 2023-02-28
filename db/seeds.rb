User.destroy_all
Preference.destroy_all
UserPreference.destroy_all
Match.destroy_all
Chatroom.destroy_all
Message.destroy_all
Activity.destroy_all
Booking.destroy_all
ActivityChatroom.destroy_all
ActivityMessage.destroy_all

Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
  puts "Processing #{file.split('/').last}"
  require file
end
