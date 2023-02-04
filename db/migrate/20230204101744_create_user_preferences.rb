class CreateUserPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :user_preferences do |t|
      t.references :users, null: false, foreign_key: true
      t.references :preferences, null: false, foreign_key: true

      t.timestamps
    end
  end
end
