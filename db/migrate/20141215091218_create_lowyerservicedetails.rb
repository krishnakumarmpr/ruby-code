class CreateLowyerservicedetails < ActiveRecord::Migration
  def change
    create_table :lowyerservicedetails do |t|
      t.string :lowyer_code
      t.string :service_code
      t.string :service_name
      t.float :charges
      t.integer :lowyerdetail_id

      t.timestamps
    end
  end
end
