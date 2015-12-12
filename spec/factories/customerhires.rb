FactoryGirl.define do
  factory :deliveryform do |f|
    f.no_items { Faker::Number.between(1, 10) }
    f.restaurant_name { Faker::Company.name}
    f.restaurant_address1 {restaurant_address1::Address.street_name }
    f.restaurant_address2 { Faker::Address.street_address }
    f.restaurant_pin { Faker::Address.zip_code }
  end
  
   factory :invaliddeliveryform, parent: :deliveryform do |f|
    f.no_items nil
    f.restaurant_name nil
     f.restaurant_address1 nil
     f.restaurant_address2 nil
     f.restaurant_pin nil
  end
  factory :validincompleteform, parent: :deliveryform do |f|
     f.restaurant_pin "454"
     f.restaurant_name nil
  end
   factory :invaliditem, parent: :deliveryform do |f|
    f.no_items nil
   
  end
   factory :invalidrestaurant, parent: :deliveryform do |f|
    
    f.restaurant_name nil
     
  end
   factory :invalidaddress, parent: :deliveryform do |f|
   
     f.restaurant_address1 nil
    
  end
   factory :invalidaddresssecond, parent: :deliveryform do |f|
   
     f.restaurant_address2 nil
     
  end
   factory :invalidpin, parent: :deliveryform do |f|
    
     f.restaurant_pin nil
  end
   factory :validcomplete, parent: :deliveryform do |f|
     f.restaurant_name "abc"
     f.restaurant_pin "52246"
  end
  factory :validincomplete, parent: :deliveryform do |f|
     f.restaurant_pin "abc"
     f.restaurant_pin nil
  end
  
end
