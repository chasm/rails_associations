# This migration was created with:
#
#   rails g migration AddRoleIdUserIdIndex
#
# Then we added the add_index line to create an index on the
# composite key of role_id and user_id.
#
# When we do "rake db:migrate", this migration will
# create a new index on the roles_users table in the database
# indexing the two fields together, role_id and user_id.
#
class AddRoleIdUserIdIndex < ActiveRecord::Migration
  def change
    add_index :roles_users, [ :role_id, :user_id ], unique: true
  end
end
