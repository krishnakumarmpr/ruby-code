class DobColumndemo < ActiveRecord::Migration
  def up
add_column :demos,:dob,:date
  end

  def down
remove_column :demos,:dob
  end
end
