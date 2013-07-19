class Telephone < ActiveRecord::Base
  # Each user can have many telephones, but each
  # telephone is associated with only one user.
  # The foreign key (user_id in this instance) alwayss
  # goes on the "belongs_to" side of the relationship.
  belongs_to :user
end
