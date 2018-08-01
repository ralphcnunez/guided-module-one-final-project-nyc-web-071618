class Dog < ActiveRecord::Base
   has_many :walkers, through: :dogwalkers 


  def self.search
    binding.pry
    all
  end

  def self.dog_breed
    all.map do |dog|
      dog.breed
    end
  end

  def self.walked?
    all.map do |dog_walked|
      binding.pry
      dog_walked.walked
    end
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
