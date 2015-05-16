class CreateGameLanes < ActiveRecord::Migration
  def change
    create_table :game_lanes do |t|
      t.references :game, index: true, foreign_key: true
      t.references :lane, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
