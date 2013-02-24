class Vote < ActiveRecord::Base  
  attr_accessible :voteable_id, :user_id, :voteable_type
  belongs_to :imageable, polymorphic: true
end
