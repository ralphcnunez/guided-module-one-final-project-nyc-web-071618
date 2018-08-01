class CommandLineInterface
def greet
  puts 'Welcome to Dogwalker, the command line solution to for lonely dogs!'
end


def gets_user_input
  puts "What's your limit? "
  answer= gets.chomp
end


def walkyers(answer)
  xall = []
   Walker.all.select do |walker|
   walker.price == answer.to_i
   xall << walker.name
end
puts xall.uniq
end

def filter
  Walker.all.select do |walker|
    walker.schedule == schedule

end

def search(answer)
 if  answer.to_i == 1
   puts walkyers
   if answer.to_i == 2
     puts “Enter Dog name”
     ans = gets.chomp
     puts “Enter breed”
     ans1 = gets.chomp
   puts “Has been walked? Enter true or false”
     ans2 = gets.chomp
   else
     puts “Enter the correct number”
   end
   end
end

def finished
  puts "If finished enter 10. Else enter any other key."
  finish = gets.chomp
  if finish.to_i == 10
    puts "Goodbye!"
    exit
  else
    run
  end
end

def run
  greet
  answer = gets_user_input
  search(answer)
  finished
end
end
