class CreateLanes < ActiveRecord::Migration
  def change
    create_table :lanes do |t|
      t.string :name
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
