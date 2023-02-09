class FixColumnNameInChatrooms < ActiveRecord::Migration[7.0]
  def change
    change_table :chatrooms do |t|
      t.rename :users2_id, :user2_id 
    end
  end
end
