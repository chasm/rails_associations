class Telephone < ActiveRecord::Base
  # A User can have many Telphones, but a Telephone is
  # associated with only one User. This means that the
  # telephones table has a user_id column.
  belongs_to :user
end
