class CreateTraindetails < ActiveRecord::Migration
  def change
    create_table :traindetails do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
