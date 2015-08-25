class CreateAdvocates < ActiveRecord::Migration
  def self.up 
    create_table :advocates do |t|
        t.integer :advocate_code
       t. string :advocate_name
       t.string :city_name
       t.decimal :experience
       t.decimal :rate
      t.timestamps
    end
  end
def self.down
drop_table :advocates
end
end
