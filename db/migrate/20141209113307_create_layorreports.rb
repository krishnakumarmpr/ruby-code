class CreateLayorreports < ActiveRecord::Migration
  def self.up
    create_table :layorreports do |t|
      t.integer :layorcode
      t.string :layorname
      t.string :city
      t.integer :exp
      t.integer :rate

      t.timestamps
    end
  end
def self.down
drop_table :layorreports
end
end
