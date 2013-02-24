class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :spots
  has_many :guides
end
