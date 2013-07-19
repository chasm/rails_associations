class User < ActiveRecord::Base
  # The user has many telephones, but each telephone
  # is associated with only one user. Adding dependent: :destroy
  # means that when we delete the User, any associated
  # Telephone objects will be deleted as well.
  has_many :telephones, dependent: :destroy

  # The user has many UserRole associations.
  has_many :user_roles
  
  # THROUGH the UserRole, we can see the Role.
  # This allows us to get those roles with:
  #
  #    user = User.find(<id>)
  #    user.roles
  #
  # instead of:
  #
  #    user = User.find(<id>)
  #    user.user_roles[<index>].role
  #
  has_many :roles, through: :user_roles
end
