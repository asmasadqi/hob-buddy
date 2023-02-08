class CreateActivityMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_messages do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :activity_chatroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
