class CreateBusinessdetails < ActiveRecord::Migration
  def change
    create_table :businessdetails do |t|
      t.integer :user_id
      t.string :business_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.timestamps null: false
    end
  end
end
