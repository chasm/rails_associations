# We created this migration and the User model with:
#
#   rails g model User name
#
# When we do "rake db:migrate", this migration will
# create a users (note the plural) table in the database
# with the following fields:
#
#   id          integer PRIMARY KEY
#   name        character varying 255
#   created_at  timestamp
#   updated_at  timestamp
#
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end
  end
end
