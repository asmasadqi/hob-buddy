puts "Cleaning up Activities..."
Activity.destroy_all
puts "Activities cleaned"

puts "Creating activities"
ac1 = Activity.create(
  title: "Diving",
  description: "Join the best of the best in scuba diving and live the dive life with a super motivated buddy who know the spots by heart",
  useful_information: "I can lend you the material if needed",
  age_range: (22..35),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Water sports").id,
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  location: "Sydney",
  min_persons: 3,
  max_persons: 6,
  total_price: 10,
  start_date: Date.today + 2.days,
  end_date: Date.today + 4.days
)
puts "Activity with id #{ac1.id}"

ac2 = Activity.create(
  title: "Fishing",
  description: "Let's meet in St-Jean de Luz for crazy fish tour, if you like squids and you would like to have it for lunch come on the boat and learn with the fisher team Rob and Alex",
  useful_information: "Bring your fishing net with you",
  age_range: (30..35),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Fishing - Hunting").id,
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  location: "Biarritz",
  min_persons: 5,
  max_persons: 6,
  total_price: 20,
  start_date: Date.today + 20.days,
  end_date: Date.today + 40.days
)
puts "Activity with id #{ac2.id}"

ac3 = Activity.create(
  title: "Fortnite",
  description: "I am a Fortnite expert player looking for a duo, trio, squad or clan to play with. Available at night from 9pm to 4pm (extra possible if passionate). Looking forward to meeting you. My gamer name is 'Kraken'",
  useful_information: "",
  age_range: (30..35),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Video Games").id,
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  location: "Berlin",
  min_persons: 1,
  max_persons: 4,
  total_price: 0,
  start_date: Date.today + 10.days,
  end_date: Date.today + 40.days
)
puts "Activity with id #{ac3.id}"

ac4 = Activity.create(
  title: "Tennis",
  description: "Meet new friends and competitors over the net!, my group is all about meeting other players, improving our skills and technique and having fun and enjoying good games!",
  useful_information: "",
  age_range: (25..35),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Ball sports").id,
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  location: "Paris",
  min_persons: 1,
  max_persons: 3,
  total_price: 0,
  start_date: Date.today + 5.days,
  end_date: Date.today + 6.days
)
puts "Activity with id #{ac4.id}"

ac5 = Activity.create(
  title: "City tour",
  description: "You've planned to travel to South Korea and your heart is already racing, ready to go sightseeing. I can make your trip to Seoul the best possible one. It'll show you the finest shopping destinations, bring you in a nice restaurant and share the story of the city with you!",
  useful_information: "I have no car we will walk around",
  age_range: (25..35),
  gender: "Female",
  preference_id: Preference.find_by(name: "City walks").id,
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  location: "Seoul",
  min_persons: 1,
  max_persons: 3,
  total_price: 30,
  start_date: Date.today + 8.days,
  end_date: Date.today + 10.days
)
puts "Activity with id #{ac5.id}"

ac6 = Activity.create(
  title: "Water polo",
  description: "Let's build a water polo team and train twice a week, I have been practicing for 10 years and I am looking for motivated buddies",
  useful_information: "only for good players (pro league)",
  age_range: (25..35),
  gender: "Male",
  preference_id: Preference.find_by(name: "Water sports").id,
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  location: "Sydney",
  min_persons: 1,
  max_persons: 6,
  total_price: 0,
  start_date: Date.today + 14.days,
  end_date: Date.today + 74.days
)
puts "Activity with id #{ac6.id}"

ac7 = Activity.create(
  title: "Ashtanga yoga zen",
  description: "Hey zen yogis! I am looking for buddies who would like to learn and practice with me the ancient art of traditional Yoga. It has changed my life (I am an former banker from Manhattan) and I swear it will change yours. Available on Saturdays in Buttes Chaumont to teach you",
  useful_information: "bring your mat",
  age_range: (25..45),
  gender: "Female",
  preference_id: Preference.find_by(name: "Yoga - pilates").id,
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  location: "Paris",
  min_persons: 1,
  max_persons: 6,
  total_price: 0,
  start_date: Date.today + 80.days
)
puts "Activity with id #{ac7.id}"

ac8 = Activity.create(
  title: "Surfing",
  description: "¡Hola! my name is Sam and I'm currently in Costa Rica practicing my surfing skills in March I'm traveling up north to Mexico, a real surfer's paradise and I would love for you to join me! This town filled with good vibes is therefore perfect to practice our surfing. After our daily surf classes, we can either relax by the beach/pool or we can try one of the many other activities that the region offers. Do not hesitate, join for great fun!",
  useful_information: "I take real waves, beginners abstain",
  age_range: (25..45),
  gender: "Female",
  preference_id: Preference.find_by(name: "Water sports").id,
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  location: "Mexico",
  min_persons: 1,
  max_persons: 3,
  total_price: 0,
  start_date: Date.today + 30.days,
  end_date: Date.today + 40.days
)
puts "Activity with id #{ac8.id}"

ac9 = Activity.create(
  title: "Fitness / Dynamo",
  description: "Hello I'm Dyno and I have founded the Dynamo circle, a cycling studio in Paris that may just be the coolest way to workout. I'd like to invite 4 to 5 buddies to test the new fitness room that just opened on the Perchoir rooftop",
  useful_information: "Limited free entrance to 5 buddies so be quick, first booked first served",
  age_range: (25..45),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Fitness").id,
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  location: "Paris",
  min_persons: 1,
  max_persons: 6,
  total_price: 0,
  start_date: Date.today + 23.days,
  end_date: Date.today + 24.days
)
puts "Activity with id #{ac9.id}"

ac10 = Activity.create(
  title: "Cooking asian food",
  description: "Hi there I'm Werner and i come back from 3 years abroad (Cambodia, China and Thailand) I've learn many recipes that I would like to share. If you are available for a cooking class and eat together what we have cooked afterwards, this group is made for you! If you join, let me know what you can't eat so i adapt the menu",
  useful_information: "I provide all the ingredients and material, the lesson takes place in my kitchen",
  age_range: (25..45),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Cooking classes").id,
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  location: "Berlin",
  min_persons: 1,
  max_persons: 6,
  total_price: 5,
  start_date: Date.today + 3.days,
  end_date: Date.today + 4.days
)
puts "Activity with id #{ac10.id}"

ac11 = Activity.create(
  title: "Travel with me in Egypt",
  description: "Hi everyone., I'm 45 and have just booked my very first solo trip, to Egypt at the beginning of May.. as I hit the pay now button on the booking screen, I went into a panic. What the heck am I going to do alone in Egypt for 10 whole days? I don't even go for coffee on my own in my own country! Do you wanna join?",
  useful_information: "from 1st to 18th of may, landing in Cairo no hotel booked yet",
  age_range: (25..55),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Travel along").id,
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  location: "Cairo",
  min_persons: 1,
  max_persons: 3,
  total_price: 0,
  start_date: Date.today + 60.days,
  end_date: Date.today + 78.days
)
puts "Activity with id #{ac11.id}"

ac12 = Activity.create(
  title: "Cycling with Tommy",
  description: "Hi all ! I'm Tom, passionate about cycling! I'm organizing a group training on March 4th around the woods in Fontainebleau.I'm thinking about a 4h session starting at Bois-Le-Roi station.
    Looking forward to seeing you all !!",
  useful_information: "Bring your training bicycle. No Velib! Bring your lunch as there will be no restaurants or shops around",
  age_range: (25..55),
  gender: "Not specified",
  preference_id: Preference.find_by(name: "Ball sports").id,
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  location: "Fontainebleau",
  min_persons: 1,
  max_persons: 3,
  total_price: 0,
  start_date: Date.today + 30.days,
  end_date: Date.today + 30.days
)
puts "Activity with id #{ac12.id}"