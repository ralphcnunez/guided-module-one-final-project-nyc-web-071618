class Walker < ActiveRecord::Base
  has_many :dogs, through: :dogwalker
end

def self.name
  all.names
end

def self.same_name

end
