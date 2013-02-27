class AddCounterCacheAgain < ActiveRecord::Migration
  def up
    add_column :guides, :votes_count, :integer, :default => 0
    Guide.all.each do |guide|
      guide.votes_count = guide.votes.count
    end
  end

  def down
  end
end
