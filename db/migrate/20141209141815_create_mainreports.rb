class CreateMainreports < ActiveRecord::Migration
  def self.up
   create_table :mainreports do |t|
      t.string :city
      t.string :servicename
     
           t.timestamps
    end
  end
def self.down
drop_table :mainreports
end
end
