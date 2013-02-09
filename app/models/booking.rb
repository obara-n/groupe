class Booking < ActiveRecord::Base
  attr_accessible :id, :name, :reserve_day, :room_id, :timezone, :user_id
end
