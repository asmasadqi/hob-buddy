# TODO: find solution for avatar: "https://source.unsplash.com/random/?profile?male"
puts "Cleaning up Users..."
User.destroy_all
puts "Users cleaned"

puts 'Creating 12 fake users...'

id1 = User.create(
  first_name: "julia",
  last_name: "thierry",
  email: "julia.thierry@gmail.com",
  password: "123456",
  about_me: "I love water sport and being on a boat and fishing in beautiful locations I have spotted. Always up to be in the ocean and looking for buddies with the same passion",
  gender: "Female",
  location: "Biarritz",
  date_of_birth: "1988-09-17"
)
puts "User with id #{id1.id}"

id2 = User.create(
  first_name: "antoine",
  last_name: "ramon",
  email: "antoine.ramon@gmail.com",
  password: "123456",
  about_me: "I'm a UI designer but my passion is cooking and video games, I do my own pasta and love japonese food, you want to cook together or meet virtually, match me!",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1986-02-11"
)
puts "User with id #{id2.id}"

id3 = User.create(
  first_name: "roxane",
  last_name: "deloche",
  email: "roxane.deloche@hotmail.com",
  password: "123456",
  about_me: "I am an architect, you have guessed it i love buildings and design and up for city tours and cultural visits. I have to say I am always late but super motivated to share my knowledge with curious buddies!",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1985-04-10"
)
puts "User with id #{id3.id}"

id4 = User.create(
  first_name: "victoria",
  last_name: "semblat",
  email: "victoria.semblat@gmail.com",
  password: "123456",
  about_me: "Helloooo it's me Vic! I'm fond of sports and actually any sports, mastering Surf and Tennis but also up for wakeboard and climbing! My english is not the best but I'm learning, looking for buddies to practice on weekends and I have a van :van-front: ",
  gender: "Female",
  location: "Sydney",
  date_of_birth: "1989-07-21"
)
puts "User with id #{id4.id}"

id5 = User.create(
  first_name: "Ayla",
  last_name: "Moon",
  email: "ayla.moon@gmail.com",
  password: "123456",
  about_me: "I love travelling and learning new languages, I have been learning Korean for a year and I came to Korea because the culture and the music. I would love to meet new friends here and go to K-Pop Concerts together!",
  gender: "Female",
  location: "Seoul",
  date_of_birth: "1985-07-30"
)
puts "User with id #{id5.id}"

id6 = User.create(
  first_name: "mathilde",
  last_name: "frances",
  email: "mathildefrances@hiphip.com",
  password: "123456",
  about_me: ":woman_in_lotus_position: Yoga is my fav hobby, i practice Ashtanga only and I'm training to be a Yogi! Will be interested to teach you if you want to try :smiley: ",
  gender: "Female",
  location: "Sydney",
  date_of_birth: "1990-07-21"
)
puts "User with id #{id6.id}"

id7 = User.create(
  first_name: "paul",
  last_name: "volle",
  email: "paulvolle@gmail.com",
  password: "123456",
  about_me: "I'm a frenchie :baguette: living in NewYork and working as a full stack dev, I collect Pokemon cards and would be up to meet new buddies to go for a drink, discover the city, improve my english or play racket sport :tennis: (mastering Squash) looking forward to meeting youu",
  gender: "Male",
  location: "New York",
  date_of_birth: "1996-01-22"
)
puts "User with id #{id7.id}"

id8 = User.create(
  first_name: "alexis",
  last_name: "brun",
  email: "alex_brun@hotmail.com",
  password: "123456",
  about_me: "Here for holidays to meet family and staying for 3 months, would love to meet new buddies to escape dinners with my Grandma! I play football and tennis quite well and would be up to go surfing :man-surfing: ",
  gender: "Male",
  location: "Mexico",
  date_of_birth: "1999-04-04"
)
puts "User with id #{id8.id}"

id9 = User.create(
  first_name: "kaori",
  last_name: "martin",
  email: "kao_martin@gmail.com",
  password: "123456",
  about_me: "I speak english :gb:, japonese :jp:, spanish :es: and french :flag-mf:, I am here for holidays, would be super happy to meet new people for activities of all kind, I love surfing :woman-surfing: and climbing :woman_climbing: and i am trying to improve my tennis skills, ready for a match?",
  gender: "Female",
  location: "Mexico",
  date_of_birth: "1995-01-01"
)
puts "User with id #{id9.id}"

id10 = User.create(
  first_name: "paul",
  last_name: "portier",
  email: "paul-portier@gmail.com",
  password: "123456",
  about_me: "let's be honest my favorite kind of sport is partying, don't bring me to a museum or a fitness room please!! If you wish to meet around a beer or a cocktail I'm totally up for that! Guys, girls or other, everybody's welcome",
  gender: "Male",
  location: "Berlin",
  date_of_birth: "1990-03-04"
)
puts "User with id #{id10.id}"

id11 = User.create(
  first_name: "britney",
  last_name: "spears",
  email: "britney@leavemealone.com",
  password: "123456",
  about_me: "love dancing and singing half naked and would be happy to go out with buddies (female only) who shares the same passion I have for lap dancing! Don't leave me alone this time, match me!",
  gender: "Female",
  location: "Los angeles",
  date_of_birth: "1978-10-19"
)
puts "User with id #{id11.id}"

id12 = User.create(
  first_name: "emmanuel",
  last_name: "macron",
  email: "manu.macron@elysée.fr",
  password: "123456",
  about_me: "Soon unemployed, I will have a lot of free time to travel around. I would be happy to make new friends since I don't know a lot of people (I'm super shy). I love football and running and I have a personal fitness room, feel free to join!",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1979-02-04"
)
puts "User with id #{id12.id}"