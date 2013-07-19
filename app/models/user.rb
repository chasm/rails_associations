class User < ActiveRecord::Base
  has_many :telephones, dependent: :destroy
  has_and_belongs_to_many :roles
end
