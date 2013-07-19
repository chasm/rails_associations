class User < ActiveRecord::Base
  has_many :telephones, dependent: :destroy
  has_many :user_roles
  has_many :roles, through: :user_roles
end
