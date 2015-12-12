require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password }
  end
  
  factory :invalidfirstname, parent: :user do |f|
    f.first_name nil
  end
  
  factory :invalidlastname, parent: :user do |f|
    f.last_name nil
  end
  factory :validincompleteformuser, parent: :user do |f|
    f.first_name "name"
    f.last_name "name1"
    f.email nil
     f.password nil
  end
  factory :validformuser, parent: :user do |f|
    f.first_name "ABCC"
    f.last_name "RSSS"
     f.email "@@"
     f.password "SJSAJ"
  end
   factory :incompletepassword, parent: :user do |f|
    f.first_name "ahd"
    f.last_name "shhs"
     f.email "hs@ss.com"
     f.password ""
  end
  factory :wrongemail, parent: :user do |f|
    f.first_name "ahd"
    f.last_name "shhs"
     f.email "njd"
     f.password "136gdjh"
  end
   factory :invalidemail, parent: :user do |f|
    f.email nil
  end
   factory :invalidpassword, parent: :user do |f|
    f.password nil
  end
  
  factory :invalidfirstnamenlastname, parent: :invalidlastname do |f|
    f.first_name nil
  end
  factory :invalidform, parent: :user do |f|
    f.first_name nil
    f.last_name nil
     f.email nil
     f.password nil
  end
end
