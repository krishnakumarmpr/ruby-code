class AddlcodeToService < ActiveRecord::Migration
 def self.up
add_column :lservices,:lreport_id,:integer
  end
def self.down
remove_column :lservices,:lreport_id
end
end
