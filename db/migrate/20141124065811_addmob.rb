class Addmob < ActiveRecord::Migration
  def self.up
add_column :demos,:mob,:string
  end

  def self.down
remove_column :demos,:mob
  end
end
