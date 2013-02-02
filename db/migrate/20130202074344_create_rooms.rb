class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_id
      t.string :room_name
      t.integer :room_max

      t.timestamps
    end
  end
end
