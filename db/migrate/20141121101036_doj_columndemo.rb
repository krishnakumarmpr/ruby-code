class DojColumndemo < ActiveRecord::Migration
  def up
add_column :demos,:doj,:date
  end

  def down
remove_column :demos,:doj
  end
end
