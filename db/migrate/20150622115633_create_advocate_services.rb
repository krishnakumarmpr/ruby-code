class CreateAdvocateServices < ActiveRecord::Migration
  def self.up 
    create_table :advocate_services do |t|
 t.integer :service_code
t.string :service_name
t.decimal :charge
      t.timestamps
    end
  end
def self.down
drop_table :advocate_services
end
end
