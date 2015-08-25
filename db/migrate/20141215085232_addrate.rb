class Addrate < ActiveRecord::Migration
  def self.up
add_column :lowerdetails,:rate,:float
  end

  def self.down
remove_column :lowerdetails,:rate
  end
end
