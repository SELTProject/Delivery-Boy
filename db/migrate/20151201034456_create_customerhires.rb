class CreateCustomerhires < ActiveRecord::Migration
  def change
    create_table :customerhires do |t|
      t.integer :user_id
      t.integer :no_items
      t.string  :restaurant_name
      t.string  :restaurant_address1
      t.string  :restaurant_address2
      t.integer :restaurant_pin
      t.string  :order_status , :default => 'open'
      t.timestamps null: false
    end
  end
end
