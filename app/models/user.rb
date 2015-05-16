class User < ActiveRecord::Base
  belongs_to :position
  belongs_to :team
  belongs_to :lean
end
