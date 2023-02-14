puts "Cleaning up Users preferences..."
UserPreference.destroy_all
puts "Users preferences cleaned"

up1 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Cooking classes").id
)
puts "Created preference for Antoine Ramon with id#{up1.id}"
up2 = UserPreference.create(
  user_id: User.find_by(email: "antoine.ramon@gmail.com").id,
  preference_id: Preference.find_by(name: "Video Games").id
)
puts "Created preference for Antoine Ramon with id#{up2.id}"

up3 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Fishing - Hunting").id
)
puts "Created preference for julia.t with id#{up3.id}"
up4 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Sailing").id
)
puts "Created preference for julia.t with id#{up4.id}"
up5 = UserPreference.create(
  user_id: User.find_by(email: "julia.thierry@gmail.com").id,
  preference_id: Preference.find_by(name: "Water sports").id
)
puts "Created preference for julia.t with id#{up5.id}"

up6 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Monuments visits").id
)
puts "Created preference for roxane.d with id#{up6.id}"
up7 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "City walks").id
)
puts "Created preference for roxane.d with id#{up7.id}"
up8 = UserPreference.create(
  user_id: User.find_by(email: "roxane.deloche@hotmail.com").id,
  preference_id: Preference.find_by(name: "Museums - Exhibitions").id
)
puts "Created preference for roxane.d with id#{up8.id}"

up9 = UserPreference.create(
  user_id: User.find_by(email: "victoria.semblat@gmail.com").id,
  preference_id: Preference.find_by(name: "Water sports").id
)
puts "Created preference for victoria.s with id#{up9.id}"

up10 = UserPreference.create(
  user_id: User.find_by(email: "kao_martin@gmail.com").id,
  preference_id: Preference.find_by(name: "Water sports").id
)
puts "Created preference for victoria.s with id#{up10.id}"

up11 = UserPreference.create(
  user_id: User.find_by(email: "alex_brun@hotmail.com").id,
  preference_id: Preference.find_by(name: "Water sports").id
)
puts "Created preference for victoria.s with id#{up11.id}"
