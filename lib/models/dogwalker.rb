class Dogwalker < ActiveRecord::Base
  belongs_to :walkers
  belongs_to :dogs
end
