class Gendemo < ActiveRecord::Migration
  def up
add_column :demos,:gender_id,:integer
  end

  def down
remove_column :demos,:gender_id
  end
end
