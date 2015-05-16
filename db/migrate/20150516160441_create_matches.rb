class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.datetime :dates

      t.timestamps null: false
    end
  end
end
