class User < ActiveRecord::Base
  # Each user can have many telephones, but each
  # telephone is associated with only one user.
  has_many :telephones, dependent: :destroy

  # We're using a bridge table (:roles_users -- note plurals)
  # to associate each user with many roles.
  # This is a many-to-many relationship.
  has_and_belongs_to_many :roles
end
