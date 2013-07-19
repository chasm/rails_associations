class Role < ActiveRecord::Base
  # The role has many UserRole associations.
  has_many :user_roles
  
  # THROUGH the UserRole, we can see the User.
  # This allows us to get those users with:
  #
  #    role = Role.find(<id>)
  #    role.users
  #
  # instead of:
  #
  #    role = Role.find(<id>)
  #    role.user_roles[<index>].user
  #
  has_many :users, through: :user_roles
end
