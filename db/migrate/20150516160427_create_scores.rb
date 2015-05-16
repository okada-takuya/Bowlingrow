class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
