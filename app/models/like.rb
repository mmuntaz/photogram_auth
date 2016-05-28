class Like < ActiveRecord::Base
  validates :user_id, :presence => true, uniqueness => scope {:scope => :photo_id}
  validates :photo_id, :presence => true

end
