class CreateMatchUsers < ActiveRecord::Migration
  def change
    create_table :match_users do |t|
      t.references :match, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
