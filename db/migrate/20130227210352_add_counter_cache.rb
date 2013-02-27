class AddCounterCache < ActiveRecord::Migration
  def up
    add_column :guides, :tasks_count, :integer, :default => 0
  end

  def down
  end
end
