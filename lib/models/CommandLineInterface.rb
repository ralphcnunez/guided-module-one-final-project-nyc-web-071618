class CommandLineInterface
def greet
  puts 'Welcome to Dogwalker, the command line solution to for lonely dogs!'
end


def gets_user_input
  puts "What's your limit? "
  answer= gets.chomp
end


def search(answer)
  xall = []
   Walker.all.select do |walker|
   walker.price == answer.to_i
   xall << walker.name
end
puts xall.uniq
end

def finished
  puts "If finished enter 10. Else enter any other key."
  finish = gets.chomp
  if finish.to_i == 10
    puts "Goodbye!"
    exit
  end
end

def run
  greet
  answer = gets_user_input
  search(answer)
  finished
end
end
