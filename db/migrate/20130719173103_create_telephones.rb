# We created this migration and the Telephone model with:
#
#   rails g model Telephone num user:references
#
# When we do "rake db:migrate", this migration will
# create a telphones (note the plural) table in the database
# with the following fields:
#
#   id          integer PRIMARY KEY
#   num         character varying 255
#   user_id     integer
#   created_at  timestamp
#   updated_at  timestamp
#
# index: true adds an index to the user_id foreign key
#
class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :num
      t.references :user, index: true

      t.timestamps
    end
  end
end
