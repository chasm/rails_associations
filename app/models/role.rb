class Role < ActiveRecord::Base
  # We're using a bridge table (:roles_users -- note plurals)
  # to associate each role with many users.
  # This is a many-to-many relationship.
  has_and_belongs_to_many :users
end
