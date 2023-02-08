class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :useful_information
      t.int4range :age_range
      t.string :gender
      t.references :preference, null: false, foreign_key: true
      t.string :location
      t.integer :min_persons
      t.integer :max_persons
      t.integer :total_price
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
