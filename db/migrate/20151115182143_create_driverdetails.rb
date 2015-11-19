class CreateDriverdetails < ActiveRecord::Migration
  def change
    create_table :driverdetails do |t|
      t.integer :user_id
      t.string :vehicle_no
      t.string :license_id
      t.timestamps null: false
    end
  end
end
