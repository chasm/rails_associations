# We created this migration and the Role model with:
#
#   rails g model Role name
#
# When we do "rake db:migrate", this migration will
# create a roles (note the plural) table in the database
# with the following fields:
#
#   id          integer PRIMARY KEY
#   name        character varying 255
#   created_at  timestamp
#   updated_at  timestamp
#
class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
