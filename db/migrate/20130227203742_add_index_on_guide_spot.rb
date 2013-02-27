class AddIndexOnGuideSpot < ActiveRecord::Migration
  def up
    add_index "guide_spots", [:guide_id, :spot_id]
  end

  def down
  end
end
