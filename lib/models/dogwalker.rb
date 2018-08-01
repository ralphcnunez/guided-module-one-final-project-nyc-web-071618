class DogWalker < ActiveRecord::Base
  belongs_to :walker
  belongs_to :dog
end
