class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :id
      t.string :room_id
      t.datetime :reserve_day
      t.string :timezone
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
