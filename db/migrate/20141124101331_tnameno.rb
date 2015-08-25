class Tnameno < ActiveRecord::Migration
  def self.up
add_column :demos,:tno,:integer
add_column :demos,:tname,:string
  end

  def self.down
remove_column :demos,:tno
remove_column :demos,:tname
  end
end
