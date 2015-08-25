class AddServicereport < ActiveRecord::Migration
  def self.up
add_column :mainreports,:layorservice_id,:integer
add_column :mainreports,:layorreport_id,:integer
  end

  def self.down
remove_column :mainreports,:layorservice_id
remove_column :mainreports,:layorreport_id
  end
end
