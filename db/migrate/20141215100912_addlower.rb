class Addlower < ActiveRecord::Migration
  def self.up
add_column :lowyerservicedetails,:lowerdetail_id,:integer
  end

  def self.down
remove_column :lowyerservicedetails,:lowerdetail_id
  end
end
