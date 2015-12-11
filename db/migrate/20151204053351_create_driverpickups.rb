class CreateDriverpickups < ActiveRecord::Migration
  def change
    create_table :driverpickups do |t|
      t.integer :customer_id
      t.integer :driver_id
      t.integer :customerhire_id
      t.string  :order_status
      t.timestamps null: false
    end
  end
end
