class Addsrcdestcla < ActiveRecord::Migration
  def self.up
add_column :demos,:src,:string
add_column :demos,:dest,:string
add_column :demos,:status,:string
  end

  def self.down
remove_column :demos,:src
remove_column :demos,:dest
remove_column :demos,:status
  end
end
