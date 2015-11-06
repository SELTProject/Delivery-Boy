class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address_line1
      t.string :address_line2
      t.string :zip_code
      t.string :city

      t.timestamps null: false
    end
  end
end
