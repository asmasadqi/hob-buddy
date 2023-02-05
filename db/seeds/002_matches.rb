puts "Cleaning up Matches..."
Match.destroy_all
puts "Matches cleaned"

puts 'Creating 5 fake matches...'

match1 = Match.create(
  user_given_id: User.where(email:"")
)