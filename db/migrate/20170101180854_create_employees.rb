class CreateEmployees < ActiveRecord::Migration[5.0]
  def up
    create_table :employees do |t|
      
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.column "age", :integer
      t.string "dept", :limit => 50

      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end
  
  def down
    drop_table :employees
  end
  
end
