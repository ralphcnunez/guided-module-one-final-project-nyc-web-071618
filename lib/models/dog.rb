class Dog < ActiveRecord::Base
  has_many :walkers, through: :dogwalkers
end
