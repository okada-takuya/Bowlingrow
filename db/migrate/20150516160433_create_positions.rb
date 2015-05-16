class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :lank
      t.string :name
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
