class GameLane < ActiveRecord::Base
  belongs_to :game
  belongs_to :lane
end
