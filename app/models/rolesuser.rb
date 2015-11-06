class Rolesuser < ActiveRecord::Base
    belongs_to :user
    belongs_to :role
end
