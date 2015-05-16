class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :position, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.references :lean, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
