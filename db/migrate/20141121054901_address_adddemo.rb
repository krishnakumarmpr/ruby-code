class AddressAdddemo < ActiveRecord::Migration
  def up
add_column :demos,:address,:string
  end

  def down
remove_column :demos,:address
  end
end
