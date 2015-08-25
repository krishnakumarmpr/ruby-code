class AddColumnAdvocateIdServices < ActiveRecord::Migration
  def self.up
add_column :advocate_services,:advocate_id ,:integer
  
end

  def self.down
remove_column :advocate_services,:advocate_id
  end
end
