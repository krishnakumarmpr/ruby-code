class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :src
      t.string :dest

      t.timestamps
    end
  end
def self.down
drop_table :places
end
end
