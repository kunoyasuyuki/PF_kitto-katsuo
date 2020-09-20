class AddColumnToRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :ticket, foreign_key: true
  end
end