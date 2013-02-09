class CreateYoyakus < ActiveRecord::Migration
  def change
    create_table :yoyakus do |t|
      t.integer :id
      t.string :room_id
      t.date :reserve_day
      t.integer :timezone
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
