class Walker < ActiveRecord::Base
  has_many :dog_walkers
  has_many :dogs, through: :dog_walkers

  def self.all_names
    all.collect do |walker|
      walker.name
    end
  end


  def self.find_walker_by_name(x)
    self.all_names.find_all{ |y| y == x}
  end

  def self.all_prices
    all.collect do |walker|
      walker.price
    end
  end


  def self.find_walker_by_price(x)
   self.all_prices.find_all{ |y| y == x}
  end

  def self.find_walker_by_schedule(x)
    self.all_schedules.find_all{ |y| y == x}
  end



  def self.all_schedules
    all.collect do |walker|
      walker.schedule
    end
  end



end
