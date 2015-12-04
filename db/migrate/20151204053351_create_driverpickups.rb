class CreateDriverpickups < ActiveRecord::Migration
  def change
    create_table :driverpickups do |t|

      t.timestamps null: false
    end
  end
end
