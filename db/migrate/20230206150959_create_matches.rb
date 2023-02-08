class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.boolean :like, default: false
      t.references :user_requester, null: false
      t.references :user_receiver, null: false

      t.timestamps
    end
    add_foreign_key :matches, :users, column: :user_requester_id
    add_foreign_key :matches, :users, column: :user_receiver_id
  end
end
