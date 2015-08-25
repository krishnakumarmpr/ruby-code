class PlaceDemo < ActiveRecord::Migration
  def up
add_column :demos,:place_id,:integer
  end

  def down
remove_column :demos,:place_id
  end
end
