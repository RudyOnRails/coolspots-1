class GuideSpot < ActiveRecord::Base
  attr_accessible :guide_id, :spot_id
  belongs_to :guide
  belongs_to :spot
end
