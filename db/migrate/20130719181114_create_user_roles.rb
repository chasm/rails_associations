class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.references :user, index: true
      t.references :role, index: true
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end
