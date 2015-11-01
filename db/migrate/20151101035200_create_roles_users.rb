class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.string :user_id
      t.string :role_id
    end
  end
end
