puts "Cleaning up Users preferences..."
puts "Users preferences cleaned"

# creating 3 preferences for Antoine
up1 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking Class").id
)
puts "Created preference for Antoine.R with id#{up1.id}"

up2 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Wine Tasting").id
)
puts "Created preference for Antoine.R with id#{up2.id}"

up3 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Video Game").id
)
puts "Created preference for Antoine.R with id#{up3.id}"

# creating 3 preferences for Julia
up4 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing").id
)
puts "Created preference for Julia.t with id#{up4.id}"

up5 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for Julia.t with id#{up5.id}"

up6 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Boat Tour").id
)
puts "Created preference for Julia.t with id#{up6.id}"

# creating 3 preferences for Roxanne
up7 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Monuments Visit").id
)
puts "Created preference for roxane.d with id#{up7.id}"
up8 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "City Walk").id
)
puts "Created preference for roxane.d with id#{up8.id}"
up9 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for roxane.d with id#{up9.id}"

# creating 3 preferences for Victoria
up10 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for victoria.s with id#{up10.id}"

up11 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Extreme Sports").id
)
puts "Created preference for victoria.s with id#{up11.id}"

up12 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Travel Along").id
)
puts "Created preference for victoria.s with id#{up12.id}"

#  creating preferences for Alexis
up13 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for alexis.b with id#{up13.id}"

up14 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for alexis.b with id#{up14.id}"

up15 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Hiking").id
)
puts "Created preference for alexis.b with id#{up15.id}"

#  creating 3 preferences for Ayla
up16 = UserPreference.create(
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for ayla.m with id#{up16.id}"

up17 = UserPreference.create(
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing").id
)
puts "Created preference for ayla.m with id#{up17.id}"

up18 = UserPreference.create(
  user_id: User.find_by(email: "ayla.moon@gmail.com").id,
  preference_id: Preference.find_by(name: "Yoga - Pilates").id
)
puts "Created preference for ayla.m with id#{up18.id}"

# creating 3 preferences for Mathilde
up19 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Yoga - Pilates").id
)
puts "Created preference for mathilde.f with id#{up19.id}"

up20 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Mindfulness").id
)
puts "Created preference for mathilde.f with id#{up20.id}"

up21 = UserPreference.create(
  user_id: User.find_by(email: "mathildefrances@hiphip.com").id,
  preference_id: Preference.find_by(name: "Fitness").id
)
puts "Created preference for mathilde.f with id#{up21.id}"

# creating 3 preferences for Paul V
up22 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Food Tour").id
)
puts "Created preference for paul.v with id#{up22.id}"

up23 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Restaurant - Cafe").id
)
puts "Created preference for paul.v with id#{up23.id}"

up24 = UserPreference.create(
  user_id: User.find_by(email: "paulvolle@gmail.com").id,
  preference_id: Preference.find_by(name: "Guided Tour").id
)
puts "Created preference for paul.v with id#{up24.id}"

# Creating 3 preferences for Paul P
up25 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Food Tour").id
)
puts "Created preference for paul.p with id#{up25.id}"

up26 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Picnic").id
)
puts "Created preference for paul.p with id#{up26.id}"

up27 = UserPreference.create(
  user_id: User.find_by(email: "paul-portier@gmail.com").id,
  preference_id: Preference.find_by(name: "Clubbing - Bar Crawl").id
)
puts "Created preference for paul.p with id#{up27.id}"

# Creating 3 preferences for Britney
up28 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Concert - Festival").id
)
puts "Created preference for britney.s with id#{up28.id}"

up29 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Dance").id
)
puts "Created preference for britney.s with id#{up29.id}"

up30 = UserPreference.create(
  user_id: User.find_by(email: "britney@leavemealone.com").id,
  preference_id: Preference.find_by(name: "Fitness").id
)
puts "Created preference for britney.s with id#{up30.id}"

# Creating 3 preferences for Emmanuel
up31 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for emmanuel.m with id#{up31.id}"

up32 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Picnic").id
)
puts "Created preference for emmanuel.m with id#{up32.id}"

up33 = UserPreference.create(
  user_id: User.find_by(email: "manu.macron@elysee.fr").id,
  preference_id: Preference.find_by(name: "Clubbing - Bar Crawl").id
)
puts "Created preference for emmanuel.m with id#{up33.id}"

# Creating 3 preferences for Werner
up34 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for werner.s with id#{up34.id}"

up35 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking Class").id
)
puts "Created preference for werner.s with id#{up35.id}"

up36 = UserPreference.create(
  user_id: User.find_by(email: "werner.schmidt@gmail.com").id,
  preference_id: Preference.find_by(name: "Ball Sports").id
)
puts "Created preference for werner.s with id#{up36.id}"

# Creating 3 preferences for Tommy
up37 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Spa - Sauna").id
)
puts "Created preference for tommy.r with id#{up37.id}"

up38 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Ball Sports").id
)
puts "Created preference for tommy.r with id#{up38.id}"

up39 = UserPreference.create(
  user_id: User.find_by(email: "tommy.reece@gmail.com").id,
  preference_id: Preference.find_by(name: "Dance").id
)
puts "Created preference for tommy.r with id#{up39.id}"

# creating 3 preferences for Kaori
up40 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Water Sports").id
)
puts "Created preference for kaori.m with id#{up40.id}"

up41 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Extreme Sports").id
)
puts "Created preference for kaori.m with id#{up41.id}"

up42 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Yoga - Pilates").id
)
puts "Created preference for kaori.m with id#{up42.id}"

up43 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking Class").id
)
puts "Created preference for kaori.m with id#{up43.id}"

up44 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Food Tour").id
)
puts "Created preference for kaori.m with id#{up44.id}"

up45 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Museum - Exhibition").id
)
puts "Created preference for kaori.m with id#{up45.id}"

up46 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Shopping").id
)
puts "Created preference for kaori.m with id#{up46.id}"

up47 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Travel Along").id
)
puts "Created preference for kaori.m with id#{up47.id}"

up48 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "City Walk").id
)
puts "Created preference for kaori.m with id#{up48.id}"

up49 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Picnic").id
)
puts "Created preference for kaori.m with id#{up49.id}"

up50 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Wine Tasting").id
)
puts "Created preference for kaori.m with id#{up50.id}"

up51 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Video Game").id
)
puts "Created preference for kaori.m with id#{up51.id}"

up52 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing").id
)
puts "Created preference for kaori.m with id#{up52.id}"

up53 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Dance").id
)
puts "Created preference for kaori.m with id#{up53.id}"

up54 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Ball Sports").id
)
puts "Created preference for kaori.m with id#{up54.id}"

up55 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Spa - Sauna").id
)
puts "Created preference for kaori.m with id#{up55.id}"

up56 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Fitness").id
)
puts "Created preference for kaori.m with id#{up56.id}"

up57 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Guided Tour").id
)
puts "Created preference for kaori.m with id#{up57.id}"

up58 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Mindfulness").id
)
puts "Created preference for kaori.m with id#{up58.id}"

up59 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Monuments Visit").id
)
puts "Created preference for kaori.m with id#{up59.id}"
