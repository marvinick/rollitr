class User < ActiveRecord::Base
  has_many :menus
  has_secure_password validations: false
end