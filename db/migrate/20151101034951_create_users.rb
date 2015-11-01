class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password_digest
      t.string :session_token
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
