class Dog < ActiveRecord::Base
  has_many :walkers, through: :dogwalkers

  def self.dog_breed
    breed.all
    binding.pry
  end
end
