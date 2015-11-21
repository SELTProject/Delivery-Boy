class Businessdetail < ActiveRecord::Base
  belongs_to :user
  
  validates :business_name, :address_line_1, :zip_code, :city, :state, :country, presence: true
end
