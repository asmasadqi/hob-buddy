puts "Cleaning up Users..."
puts "Users cleaned"

puts "Creating 5 categories: Culture, Entertainment, Food, Sports, Wellness, Sightseeing, Outdoors and associated activities"

# Culture Category with 5 seeds
p1 = Preference.create!(
  category: "Culture",
  name: "Opera - Ballet"
)
puts "Preference id #{p1.id}"

p2 = Preference.create!(
  category: "Culture",
  name: "Museum - Exhibition"
)
puts "Preference id #{p2.id}"

p3 = Preference.create!(
  category: "Culture",
  name: "Language Exchange"
)
puts "Preference id #{p3.id}"

p4 = Preference.create!(
  category: "Culture",
  name: "Books"
)
puts "Preference id #{p4.id}"

p5 = Preference.create!(
  category: "Culture",
  name: "Handcraft Workshop"
)
puts "Preference id #{p5.id}"

# Entertainment Category with 5 seeds
p6 = Preference.create!(
  category: "Entertainment",
  name: "Concert - Festival"
)
puts "Preference id #{p6.id}"

p7 = Preference.create!(
  category: "Entertainment",
  name: "Cinema - Theater"
)
puts "Preference id #{p7.id}"

p8 = Preference.create!(
  category: "Entertainment",
  name: "Clubbing - Bar Crawl"
)
puts "Preference id #{p8.id}"

p9 = Preference.create!(
  category: "Entertainment",
  name: "Video Game"
)
puts "Preference id #{p9.id}"

p10 = Preference.create!(
  category: "Entertainment",
  name: "Sports Match"
)
puts "Preference id #{p10.id}"

# Sports Category with 6 seeds
p11 = Preference.create!(
  category: "Sports",
  name: "Water Sports"
)
puts "Preference id #{p11.id}"

p12 = Preference.create!(
  category: "Sports",
  name: "Ball Sports"
)
puts "Preference id #{p12.id}"

p13 = Preference.create!(
  category: "Sports",
  name: "Extreme Sports"
)
puts "Preference id #{p13.id}"

p14 = Preference.create!(
  category: "Sports",
  name: "Combat Sports"
)
puts "Preference id #{p14.id}"

p15 = Preference.create!(
  category: "Sports",
  name: "Fitness"
)
puts "Preference id #{p15.id}"

p16 = Preference.create!(
  category: "Sports",
  name: "Dance"
)
puts "Preference id #{p16.id}"

# Food Category with 5 seeds
p17 = Preference.create!(
  category: "Food",
  name: "Cooking Class"
)
puts "Preference id #{p17.id}"

p18 = Preference.create!(
  category: "Food",
  name: "Food Tour"
)
puts "Preference id #{p18.id}"

p19 = Preference.create!(
  category: "Food",
  name: "Restaurant - Cafe"
)
puts "Preference id #{p19.id}"

p20 = Preference.create!(
  category: "Food",
  name: "Local Market"
)
puts "Preference id #{p20.id}"

p21 = Preference.create!(
  category: "Food",
  name: "Wine Tasting"
)
puts "Preference id #{p21.id}"

# Wellness Category with 5 seeds
p22 = Preference.create!(
  category: "Wellness",
  name: "Yoga - Pilates"
)
puts "Preference id #{p22.id}"

p23 = Preference.create!(
  category: "Wellness",
  name: "Mindfulness"
)
puts "Preference id #{p23.id}"

p24 = Preference.create!(
  category: "Wellness",
  name: "Spa - Sauna"
)
puts "Preference id #{p24.id}"

p25 = Preference.create!(
  category: "Wellness",
  name: "Beauty Treatment"
)
puts "Preference id #{p25.id}"

p26 = Preference.create!(
  category: "Wellness",
  name: "Retreat Excursion"
)
puts "Preference id #{p26.id}"

# Sightseeing Category with 5 seeds
p27 = Preference.create!(
  category: "Sightseeing",
  name: "City Walk"
)
puts "Preference id #{p27.id}"

p28 = Preference.create!(
  category: "Sightseeing",
  name: "Monuments Visit"
)
puts "Preference id #{p28.id}"

p29 = Preference.create!(
  category: "Sightseeing",
  name: "Boat Tour"
)
puts "Preference id #{p29.id}"

p30 = Preference.create!(
  category: "Sightseeing",
  name: "Shopping"
)
puts "Preference id #{p30.id}"

p31 = Preference.create!(
  category: "Sightseeing",
  name: "Guided Tour"
)
puts "Preference id #{p31.id}"

p32 = Preference.create!(
  category: "Sightseeing",
  name: "Travel Along"
)
puts "Preference id #{p32.id}"

# Outdoors Category with 5 seeds
p33 = Preference.create!(
  category: "Outdoors",
  name: "Hiking"
)
puts "Preference id #{p33.id}"

p34 = Preference.create!(
  category: "Outdoors",
  name: "Fishing"
)
puts "Preference id #{p34.id}"

p35 = Preference.create!(
  category: "Outdoors",
  name: "Sailing"
)
puts "Preference id #{p35.id}"

p36 = Preference.create!(
  category: "Outdoors",
  name: "Picnic"
)
puts "Preference id #{p36.id}"

p37 = Preference.create!(
  category: "Outdoors",
  name: "Camping"
)
puts "Preference id #{p37.id}"
