class DeleteTicketIdToRoomUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :room_users, :ticket_id, :reference
  end
end
