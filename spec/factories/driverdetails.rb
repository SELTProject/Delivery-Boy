FactoryGirl.define do
  factory :driverdetail do |f|
    f.vehicle_no { Faker::Company.duns_number }
    f.license_id { Faker::Company.duns_number}
    
  end
  factory :invalid_vehiclenumber, parent: :driverdetail do |f|
  f.vehicle_no nil
  end
  
  factory :invalid_license, parent: :driverdetail do |f|
  f.license_id nil
  end
  factory :invalidformdriver, parent: :driverdetail do |f|
  f.license_id nil
  f.vehicle_no nil
  end
  factory :validdriver, parent: :driverdetail do |f|
  f.license_id "e63"
  f.vehicle_no nil
  end
   factory :validincomplte, parent: :driverdetail do |f|
  f.license_id nil
  f.vehicle_no "YYM723"
  end

end
