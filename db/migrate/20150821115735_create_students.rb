class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
   t.type  :string
      t.timestamps
    end
  end
end
