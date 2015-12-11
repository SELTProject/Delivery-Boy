# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = [{:name => 'customer'},
    	  {:name => 'driver'},
    	  {:name => 'businessowner'}]

# customer = [{id: 1, first_name: "bala", last_name: "thiru", phone_number: nil, address_line1: nil, address_line2: nil, zip_code: nil, city: nil, created_at: "2015-12-10 19:30:23", updated_at: "2015-12-10 19:31:00", email: "bala92@gmail.com", encrypted_password: "", password: "12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-12-10 19:31:00", last_sign_in_at: "2015-12-10 19:31:00", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "mBRSLcxAUibd3wYrES2R", confirmed_at: "2015-12-10 19:30:45", confirmation_sent_at: "2015-12-10 19:30:24", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil}]
# driver =   [{id: 2, first_name: "balaji", last_name: "Thiruppathi", phone_number: nil, address_line1: nil, address_line2: nil, zip_code: nil, city: nil, created_at: "2015-12-10 22:53:27", updated_at: "2015-12-10 22:54:12", email: "tbala92@hotmail.com", encrypted_password: "", password: "12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-12-10 22:54:12", last_sign_in_at: "2015-12-10 22:54:12", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "EyPk57iZL9c4jQDDn2Hs", confirmed_at: "2015-12-10 22:54:01", confirmation_sent_at: "2015-12-10 22:53:27", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil}]
#
# User.create!(customer)
# User.create!(driver)

roles.each do |role|
  Role.create!(role)
end
