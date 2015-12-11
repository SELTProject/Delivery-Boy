User.create!([
  {first_name: "Siddhartha", last_name: "Kodali", phone_number: nil, address_line1: nil, address_line2: nil, zip_code: nil, city: nil, email: "kodalisiddhu@gmail.com", encrypted_password: "$2a$10$P3NtvgTy4s3IBHSPdocJN.Z/UYWhpuoT0emNl9LlDrQjlI.RQfMvi", password:"siddhu92", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-12-11 03:16:30", last_sign_in_at: "2015-12-11 03:16:30", current_sign_in_ip: "63.152.82.189", last_sign_in_ip: "63.152.82.189", confirmation_token: "Pxfn8nvaq6yb3C6GaZaM", confirmed_at: "2015-12-11 03:15:58", confirmation_sent_at: "2015-12-11 03:15:11", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil},
  {first_name: "Balaji", last_name: "Thiruppathi", phone_number: nil, address_line1: nil, address_line2: nil, zip_code: nil, city: nil, email: "bala92@gmail.com", encrypted_password: "$2a$10$qYta6eJCOaucOSWtKhFCw.tywMUtMrh5.TgtffN3z3uuQUAx4vS5K", password:"12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-12-11 03:20:47", last_sign_in_at: "2015-12-11 03:15:48", current_sign_in_ip: "63.152.82.189", last_sign_in_ip: "63.152.82.189", confirmation_token: "ybywA938zozDHxReYZDJ", confirmed_at: "2015-12-11 03:15:29", confirmation_sent_at: "2015-12-11 03:15:14", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil},
  {first_name: "Balaji", last_name: "Thiruppathi", phone_number: nil, address_line1: nil, address_line2: nil, zip_code: nil, city: nil, email: "tbala92@hotmail.com", encrypted_password: "$2a$10$ef2bWZSxUu1Vq7ptb8XV8.vVKQnESaCnZLmepql3YHntD6GdB.PY6", password:"12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-12-11 03:17:31", last_sign_in_at: "2015-12-11 03:17:31", current_sign_in_ip: "63.152.82.189", last_sign_in_ip: "63.152.82.189", confirmation_token: "ryn_rgb-1e15STJKU9j2", confirmed_at: "2015-12-11 03:17:01", confirmation_sent_at: "2015-12-11 03:16:49", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil}
])
User::HABTM_Roles.create!([
  {user_id: 1, role_id: 2},
  {user_id: 2, role_id: 1},
  {user_id: 3, role_id: 1}
])
Customerhire.create!([
  {user_id: 3, no_items: 4, restaurant_name: "mesa", restaurant_address1: "1sdasda", restaurant_address2: "asdadas", restaurant_pin: 123213, order_status: "open"},
  {user_id: 3, no_items: 10, restaurant_name: "chipote", restaurant_address1: "dadsads", restaurant_address2: "dadasda", restaurant_pin: 12312, order_status: "open"},
  {user_id: 2, no_items: 10, restaurant_name: "Pancheros", restaurant_address1: "213123", restaurant_address2: "dsadasd", restaurant_pin: 13123, order_status: "open"}
])
Driverdetail.create!([
  {user_id: 1, vehicle_no: "IA1234", license_id: "ABC123XYZ"}
])
Role.create!([
  {name: "customer"},
  {name: "driver"},
  {name: "businessowner"}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 2},
  {user_id: 2, role_id: 1},
  {user_id: 3, role_id: 1}
])
