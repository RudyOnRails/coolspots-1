class Guide < ActiveRecord::Base
  attr_accessible :name, :user_id, :location_id
  belongs_to :user
  belongs_to :location
  
  has_many :votes, as: :voteable
  
  has_many :guide_spots
  has_many :spots, through: :guide_spots

  def self.random
    all.sample
  end
end
