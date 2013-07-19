# This migration was created with:
#
#   rails g migration CreateRolesUsers role:references user:references
#
# Then we added "id: false" to prevent rails from adding an ID field.
#
# When we do "rake db:migrate", this migration will
# create a roles_users (note the plurals) BRIDGE table in the database
# with the following fields:
#
#   role_id     integer
#   user_id     integer
#
class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users, id: false do |t|
      t.references :role, index: true
      t.references :user, index: true
    end
  end
end
