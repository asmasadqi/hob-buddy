class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.boolean :like
      t.references :user_given, null: false
      t.references :user_received, null: false

      t.timestamps
    end
    add_foreign_key :matches, :users, column: :user_given_id
    add_foreign_key :matches, :users, column: :user_received_id
  end
end
