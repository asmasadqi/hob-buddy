require 'open-uri'

puts "Cleaning up Users..."
puts "Users cleaned"

puts 'Creating 12 fake users...'

id1 = User.new(
  first_name: "Julia",
  last_name: "Thierry",
  email: "julia.thierry@gmail.com",
  password: "123456",
  about_me: "I love water sport and being on a boat and fishing in beautiful locations I have spotted. Always up to be in the ocean and looking for buddies with the same passion",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1988-09-17"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732483/development/k6auef021ox5dc3nboa6u6h69sds.jpg')
id1.save!
id1.avatar.attach(io: file, filename: 'julia_t.jpg', content_type: 'image/jpg')
puts "User with id #{id1.id}"

id2 = User.new(
  first_name: "Antoine",
  last_name: "Ramon",
  email: "antoine.ramon@gmail.com",
  password: "123456",
  about_me: "I'm a UI designer but my passion is cooking and video games, I do my own pasta and love Japanese food, you want to cook together or meet virtually, match me!",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1989-02-11"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732487/development/rnh2vr3hr2lov33ruybeqettspsm.jpg')
id2.save!
id2.avatar.attach(io: file, filename: 'antoine_r.jpg', content_type: 'image/jpg')
puts "User with id #{id2.id}"

id3 = User.new(
  first_name: "Roxane",
  last_name: "Deloche",
  email: "roxane.deloche@hotmail.com",
  password: "123456",
  about_me: "I am an architect, you have guessed it i love buildings and design and up for city tours and cultural visits. I have to say I am always late but super motivated to share my knowledge with curious buddies!",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1985-04-10"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732506/development/rmqig9ss0qmge8xmckhvskwfnhy7.jpg')
id3.save!
id3.avatar.attach(io: file, filename: 'roxane_d.jpg', content_type: 'image/jpg')
puts "User with id #{id3.id}"

id4 = User.new(
  first_name: "Victoria",
  last_name: "Semblat",
  email: "victoria.semblat@gmail.com",
  password: "123456",
  about_me: "Helloooo it's me Vic! I'm fond of sports and actually any sports, mastering Surf and Tennis but also up for wakeboard and climbing! My english is not the best but I'm learning, looking for buddies to practice on weekends and I have a van",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1989-07-21"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732503/development/7sfqh2v9mixvfqj7ad4o5cxhrhrb.jpg')
id4.save!
id4.avatar.attach(io: file, filename: 'victoria_s.jpg', content_type: 'image/jpg')
puts "User with id #{id4.id}"

id5 = User.new(
  first_name: "Ayla",
  last_name: "Moon",
  email: "ayla.moon@gmail.com",
  password: "123456",
  about_me: "I love travelling and learning new languages, especially learning Korean is my new hobby! I visited Korea many times because I love their culture and music. I would love to meet new friends here and go to K-Pop concerts together!",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1985-07-30"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732499/development/n0ywj0e708zjgms77fg3bzluzjxu.jpg')
id5.save!
id5.avatar.attach(io: file, filename: 'ayla_m.jpg', content_type: 'image/jpg')
puts "User with id #{id5.id}"

id6 = User.new(
  first_name: "Mathilde",
  last_name: "Frances",
  email: "mathildefrances@hiphip.com",
  password: "123456",
  about_me: "Yoga is my fav hobby, I practice Ashtanga only and I'm training to be a Yogi! Will be interested to teach you if you want to try",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1993-07-21"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732511/development/xalt2vyhema8hua0lr4a8c4nvxse.jpg')
id6.save!
id6.avatar.attach(io: file, filename: 'mathilde_f.jpg', content_type: 'image/jpg')
puts "User with id #{id6.id}"

id7 = User.new(
  first_name: "Paul",
  last_name: "Volle",
  email: "paulvolle@gmail.com",
  password: "123456",
  about_me: "I'm a frenchie living in NewYork and working as a full stack dev, I'm back to Paris for holidays! I collect Pokemon cards and would be up to meet new buddies to go for a drink, discover the city, improve my english or play racket sport (mastering Squash) looking forward to meeting youu",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1996-01-22"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732515/development/uvsj28bcc02bcut36c57b31rjo2a.jpg')
id7.save!
id7.avatar.attach(io: file, filename: 'paul_v.jpg', content_type: 'image/jpg')
puts "User with id #{id7.id}"

id8 = User.new(
  first_name: "Alexis",
  last_name: "Brun",
  email: "alex_brun@hotmail.com",
  password: "123456",
  about_me: "Here for holidays to meet family and staying for 3 months, would love to meet new buddies to escape dinners with my Grandma! I play football and tennis quite well and would be up to go surfing",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1998-04-04"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1677330976/kira-laktionov-X5amJgtH2NQ-unsplash_r0nt1d.jpg')
id8.save!
id8.avatar.attach(io: file, filename: 'alex_b.jpg', content_type: 'image/jpg')
puts "User with id #{id8.id}"

id9 = User.new(
  first_name: "Kaori",
  last_name: "Martin",
  email: "kao_martin@gmail.com",
  password: "123456",
  about_me: "I speak English, Japanese, Spanish and French, I am here for holidays, would be super happy to meet new people for activities of all kind, I love surfing :woman-surfing: and climbing and i am trying to improve my tennis skills, ready for a match?",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1994-12-21"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1677331055/oliver-sjostrom-Mc-r-wjnAac-unsplash_gy9q2u.jpg')
id9.save!
id9.avatar.attach(io: file, filename: '"kao_m.jpg', content_type: 'image/jpg')
puts "User with id #{id9.id}"

id10 = User.new(
  first_name: "Paul",
  last_name: "Portier",
  email: "paul-portier@gmail.com",
  password: "123456",
  about_me: "Let's be honest my favorite kind of sport is partying, don't bring me to a museum or a fitness room please!! If you wish to meet around a beer or a cocktail I'm totally up for that! Guys, girls or other, everybody's welcome",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1990-03-04"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732526/development/xrg30vgz4r5zng8mbn56qghb7zw6.jpg')
id10.save!
id10.avatar.attach(io: file, filename: 'paul_p.png', content_type: 'image/png')
puts "User with id #{id10.id}"

id11 = User.new(
  first_name: "Britney",
  last_name: "Spears",
  email: "britney@leavemealone.com",
  password: "123456",
  about_me: "Love dancing and singing half naked and would be happy to go out with buddies (female only) who shares the same passion I have for pole dancing! Don't leave me alone this time, match with me!",
  gender: "Female",
  location: "Paris",
  date_of_birth: "1990-10-19"
)
file = URI.open('https://images.unsplash.com/photo-1504439904031-93ded9f93e4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80')
id11.save!
id11.avatar.attach(io: file, filename: 'britney.jpg', content_type: 'image/jpg')
puts "User with id #{id11.id}"

id12 = User.new(
  first_name: "Emmanuel",
  last_name: "Macron",
  email: "manu.macron@elysee.fr",
  password: "123456",
  about_me: "Soon unemployed, I will have a lot of free time to travel around. I would be happy to make new friends since I don't know a lot of people (I'm super shy). I love football and running and I have a personal fitness room, feel free to join!",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1979-02-04"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732537/development/jrfta96wq5qmg78lvm1x2otb6k4y.jpg')
id12.save!
id12.avatar.attach(io: file, filename: 'emmanuel_m.jpg', content_type: 'image/jpg')
puts "User with id #{id12.id}"

id13 = User.new(
  first_name: "Werner",
  last_name: "Schmidt",
  email: "werner.schmidt@gmail.com",
  password: "123456",
  about_me: "I love traveling and cooking and I frequently plan trips where I can do both. I love cooking for other people and making new friends wherever I go",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1994-03-04"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732533/development/i1t5ypwsj5yv2smpkfch5vn56fl6.jpg')
id13.save!
id13.avatar.attach(io: file, filename: 'werner_s.jpg', content_type: 'image/jpg')
puts "User with id #{id13.id}"

id14 = User.new(
  first_name: "Tommy",
  last_name: "Reece",
  email: "tommy.reece@gmail.com",
  password: "123456",
  about_me: "I'm a professional volleyball player, fashion model and actor. Anyone down?",
  gender: "Male",
  location: "Paris",
  date_of_birth: "1985-03-04"
)
file = URI.open('https://res.cloudinary.com/dg5wojcq5/image/upload/v1676732540/development/hbge14u97r3i2a5aflc441giwyvi.jpg')
id14.save!
id14.avatar.attach(io: file, filename: 'tommy_r.jpg', content_type: 'image/jpg')
puts "User with id #{id14.id}"
