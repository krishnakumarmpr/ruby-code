class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :city

      t.timestamps
    end
  end
end
