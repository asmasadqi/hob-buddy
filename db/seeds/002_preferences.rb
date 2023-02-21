puts "Cleaning up Users..."
Preference.destroy_all
puts "Users cleaned"

puts "Creating 5 categories: Culture, Entertainment, Food, Sports, Wellness, Sightseeing, Outdoors and associated activities"

# Culture Category with 5 seeds
p1 = Preference.create(
  category: "Culture",
  name: "Opera - ballet - classical music"
)
puts "Preference id #{p1.id}"

p2 = Preference.create(
  category: "Culture",
  name: "Museums - Exhibitions"
)
puts "Preference id #{p2.id}"

p3 = Preference.create(
  category: "Culture",
  name: "Language exchange"
)
puts "Preference id #{p3.id}"

p4 = Preference.create(
  category: "Culture",
  name: "Literary events"
)
puts "Preference id #{p4.id}"

p5 = Preference.create(
  category: "Culture",
  name: "Learning workshops"
)
puts "Preference id #{p5.id}"

# Entertainment Category with 5 seeds
p6 = Preference.create(
  category: "Entertainment",
  name: "Concerts - Shows - Festivals"
)
puts "Preference id #{p6.id}"

p7 = Preference.create(
  category: "Entertainment",
  name: "Cinema - Theater"
)
puts "Preference id #{p7.id}"

p8 = Preference.create(
  category: "Entertainment",
  name: "Clubbing - bar crawls"
)
puts "Preference id #{p8.id}"

p9 = Preference.create(
  category: "Entertainment",
  name: "Video Games"
)
puts "Preference id #{p9.id}"

p10 = Preference.create(
  category: "Entertainment",
  name: "Drinks - Afterwork"
)
puts "Preference id #{p10.id}"

# Sports Category with 6 seeds
p11 = Preference.create(
  category: "Sports",
  name: "Water sports"
)
puts "Preference id #{p11.id}"

p12 = Preference.create(
  category: "Sports",
  name: "Ball sports"
)
puts "Preference id #{p12.id}"

p13 = Preference.create(
  category: "Sports",
  name: "Extreme sports"
)
puts "Preference id #{p13.id}"

p14 = Preference.create(
  category: "Sports",
  name: "Combat sports"
)
puts "Preference id #{p14.id}"

p15 = Preference.create(
  category: "Sports",
  name: "Fitness"
)
puts "Preference id #{p15.id}"

p16 = Preference.create(
  category: "Sports",
  name: "Dance"
)
puts "Preference id #{p16.id}"

# Food Category with 5 seeds
p17 = Preference.create(
  category: "Food",
  name: "Cooking classes"
)
puts "Preference id #{p17.id}"

p18 = Preference.create(
  category: "Food",
  name: "Food tours"
)
puts "Preference id #{p18.id}"

p19 = Preference.create(
  category: "Food",
  name: "Restaurants - cafes"
)
puts "Preference id #{p19.id}"

p20 = Preference.create(
  category: "Food",
  name: "Local and specialty food markets"
)
puts "Preference id #{p20.id}"

p21 = Preference.create(
  category: "Food",
  name: "Tasting experiences"
)
puts "Preference id #{p21.id}"

# Wellness Category with 5 seeds
p22 = Preference.create(
  category: "Wellness",
  name: "Yoga - pilates"
)
puts "Preference id #{p22.id}"

p23 = Preference.create(
  category: "Wellness",
  name: "Meditation"
)
puts "Preference id #{p23.id}"

p24 = Preference.create(
  category: "Wellness",
  name: "Spa - Sauna"
)
puts "Preference id #{p24.id}"

p25 = Preference.create(
  category: "Wellness",
  name: "Beauty treatments"
)
puts "Preference id #{p25.id}"

p26 = Preference.create(
  category: "Wellness",
  name: "Mindfulness workshop"
)
puts "Preference id #{p26.id}"

# Sightseeing Category with 5 seeds
p27 = Preference.create(
  category: "Sightseeing",
  name: "City walks"
)
puts "Preference id #{p27.id}"

p28 = Preference.create(
  category: "Sightseeing",
  name: "Monuments visits"
)
puts "Preference id #{p28.id}"

p29 = Preference.create(
  category: "Sightseeing",
  name: "boat tours"
)
puts "Preference id #{p29.id}"

p30 = Preference.create(
  category: "Sightseeing",
  name: "Shopping Tour"
)
puts "Preference id #{p30.id}"

p31 = Preference.create(
  category: "Sightseeing",
  name: "Guided tours"
)
puts "Preference id #{p31.id}"

p32 = Preference.create(
  category: "Sightseeing",
  name: "Travel along"
)
puts "Preference id #{p32.id}"

# Outdoors Category with 5 seeds
p33 = Preference.create(
  category: "Outdoors",
  name: "Trekking - Hiking"
)
puts "Preference id #{p33.id}"

p34 = Preference.create(
  category: "Outdoors",
  name: "Fishing - Hunting"
)
puts "Preference id #{p34.id}"

p35 = Preference.create(
  category: "Outdoors",
  name: "Sailing"
)
puts "Preference id #{p35.id}"

p36 = Preference.create(
  category: "Outdoors",
  name: "Picnics"
)
puts "Preference id #{p36.id}"

p37 = Preference.create(
  category: "Outdoors",
  name: "Camping"
)
puts "Preference id #{p37.id}"
