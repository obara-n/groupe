class User < ActiveRecord::Base
  attr_accessible :pass, :user_id, :user_name
end
