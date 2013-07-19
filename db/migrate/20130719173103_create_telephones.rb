class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :num
      t.references :user, index: true

      t.timestamps
    end
  end
end
