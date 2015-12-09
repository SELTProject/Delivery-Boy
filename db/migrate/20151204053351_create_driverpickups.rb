class CreateDriverpickups < ActiveRecord::Migration
  def change
    create_table :driverpickups do |t|
      
      t.integer :customer_id
      t.string :driver_id

      t.timestamps null: false
    end
  end
end