class CreateGenders < ActiveRecord::Migration
  def self.up
    create_table :genders do |t|
      t.string :gender_type

      t.timestamps
    end
  end
end
