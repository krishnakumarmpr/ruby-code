class Chekedbyamt < ActiveRecord::Migration
  def self.up
add_column :demos,:check,:string
add_column :demos,:amt,:decimal
  end

  def self.down
remove_column :demos,:check
remove_column :demos,:amt
  end
end
