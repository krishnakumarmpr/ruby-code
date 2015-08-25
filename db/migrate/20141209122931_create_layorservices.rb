class CreateLayorservices < ActiveRecord::Migration
  def self.up
    create_table :layorservices do |t|
      t.integer :servicecode
      t.string :servicename
      t.decimal :charge

      t.timestamps
    end
  end
def self.down
drop_table :layorservice
end
end
