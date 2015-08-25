class AddLayorcodeToLayorservice < ActiveRecord::Migration
  def self.up
add_column :layorservices,:layorcode,:integer
  end
def self.down
remove_column :layorservices,:layorcode
end
end
