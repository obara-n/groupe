class Room < ActiveRecord::Base
  attr_accessible :room_id, :room_max, :room_name
end
