class SpotVotesCount < ActiveRecord::Migration
  def up
     add_column :spots, :votes_count, :integer, :default => 0
      Spot.all.each do |guide|
        guide.votes_count = guide.votes.count
      end
  end

  def down
  end
end
