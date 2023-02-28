puts "Cleaning up Users preferences..."
puts "Users preferences cleaned"

up1 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking Class").id
)
puts "Created preference for Antoine Ramon with id#{up1.id}"
up2 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Video Game").id
)
puts "Created preference for Antoine Ramon with id#{up2.id}"

up3 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing").id
)
puts "Created preference for julia.t with id#{up3.id}"
up4 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for julia.t with id#{up4.id}"
up5 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for julia.t with id#{up5.id}"

up6 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Monuments Visit").id
)
puts "Created preference for roxane.d with id#{up6.id}"
up7 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "City Walk").id
)
puts "Created preference for roxane.d with id#{up7.id}"
up8 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for roxane.d with id#{up8.id}"

up9 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for victoria.s with id#{up9.id}"

up10 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for kaori.m with id#{up10.id}"

up11 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for alexis.b with id#{up11.id}"

up12 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for alexis.b with id#{up12.id}"

up13 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for kaori.m with id#{up13.id}"

up14 = UserPreference.create(
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for ayla.m with id#{up14.id}"

up15 = UserPreference.create(
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing").id
)
puts "Created preference for ayla.m with id#{up15.id}"

up16 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Yoga - Pilates").id
)
puts "Created preference for mathilde.f with id#{up16.id}"

up17 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Mindfulness Workshop").id
)
puts "Created preference for mathilde.f with id#{up17.id}"

up18 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Food Tour").id
)
puts "Created preference for paul.v with id#{up18.id}"

up19 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Restaurant - Cafe").id
)
puts "Created preference for paul.v with id#{up19.id}"

up20 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Food Tour").id
)
puts "Created preference for mathilde.f with id#{up20.id}"

up21 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Picnic").id
)
puts "Created preference for paul.v with id#{up21.id}"

up22 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Clubbing - Bar Crawl").id
)
puts "Created preference for paul.v with id#{up22.id}"

up23 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Concert - Festival").id
)
puts "Created preference for mathilde.f with id#{up23.id}"

up24 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Dance").id
)
puts "Created preference for paul.v with id#{up24.id}"

up25 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Fitness").id
)
puts "Created preference for paul.v with id#{up25.id}"

up26 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for mathilde.f with id#{up26.id}"

up27 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Picnic").id
)
puts "Created preference for paul.v with id#{up27.id}"

up28 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Clubbing - Bar Crawl").id
)
puts "Created preference for paul.v with id#{up28.id}"

up29 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for paul.v with id#{up29.id}"

up30 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking Class").id
)
puts "Created preference for paul.v with id#{up30.id}"

up31 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Spa - Sauna").id
)
puts "Created preference for paul.v with id#{up31.id}"

up32 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Ball Sports").id
)
puts "Created preference for paul.v with id#{up32.id}"

up33 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Language Exchange").id
)
puts "Created preference for mathilde.f with id#{up33.id}"

up34 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Dance").id
)
puts "Created preference for paul.v with id#{up34.id}"

up35 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Fitness").id
)
puts "Created preference for paul.v with id#{up35.id}"

up36 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for mathilde.f with id#{up36.id}"

up37 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Extreme Sports").id
)
puts "Created preference for paul.v with id#{up37.id}"

up38 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Books").id
)
puts "Created preference for paul.v with id#{up38.id}"

up39 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for paul.v with id#{up39.id}"

up40 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Guided Tour").id
)
puts "Created preference for paul.v with id#{up40.id}"
