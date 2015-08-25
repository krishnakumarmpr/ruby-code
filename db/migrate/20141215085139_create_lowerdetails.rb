class CreateLowerdetails < ActiveRecord::Migration
  def change
    create_table :lowerdetails do |t|
      t.string:lowyer_code
      t.string :lowyer
      t.float :experience
      t.string :city

      t.timestamps
    end
  end
end
