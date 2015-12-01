class Customerhire < ActiveRecord::Base
  belongs_to :user
  validates :no_items, :restaurant_name,:restaurant_address1,:restaurant_address2,:restaurant_pin, presence: true
end
