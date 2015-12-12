class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  has_and_belongs_to_many :roles, :join_table => "rolesusers"
  has_one :driverdetail
  has_one :businessdetail
  has_many :customerhires
  attr_accessor :rid
  validates :first_name, :last_name, presence: true
end
