class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.references :user1, null: false, foreign_key: { to_table: :chatrooms }
      t.references :users2, null: false, foreign_key: { to_table: :chatrooms }

      t.timestamps
    end
  end
end
