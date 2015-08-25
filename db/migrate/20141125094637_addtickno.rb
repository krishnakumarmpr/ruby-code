class Addtickno < ActiveRecord::Migration
  def self.up
add_column :demos,:tickno,:integer
add_column :demos,:cno,:integer
add_column :demos,:mpay,:string
add_column :demos,:prf,:string
add_column :demos,:sno,:integer
add_column :demos,:idno,:integer
  end

  def self.down
remove_column :demos,:tickno
remove_column :demos,:cno
remove_column :demos,:mpay
remove_column :demos,:prf
remove_column :demos,:sno
remove_column :demos,:idno
  end
end
