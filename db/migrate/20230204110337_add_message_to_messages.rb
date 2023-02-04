class AddMessageToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :message, :text
  end
end
