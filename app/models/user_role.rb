class UserRole < ActiveRecord::Base
  # The UserRole has a many-to-one relationship with
  # both the User and the Role. This means that the user_roles
  # table will have user_id and role_id columns.
  belongs_to :user
  belongs_to :role
end
