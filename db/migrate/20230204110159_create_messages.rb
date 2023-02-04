class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :users, null: false, foreign_key: true
      t.references :chatrooms, null: false, foreign_key: true

      t.timestamps
    end
  end
end
