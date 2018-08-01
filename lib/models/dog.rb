class Dog < ActiveRecord::Base
  has_many :walkers, through: :dog_walkers


def self.all_walked
  all.collect do |walker|
    walker.schedule
  end
end

def self.all_breeds
  all.collect do |walker|
    walker.price
  end
end


def self.all_names
  all.collect do |walker|
    walker.schedule
  end
end

end 
