class CommandLineInterface

def run
    greet
    answer = gets_user_input
    search(answer)

    finished
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

def select

end






  def greet
    puts 'Welcome to Dogwalker, the command line solution to for lonely dogs!'
  end

  def gets_user_input
    puts "Enter 1 to search for walkers. Enter 2 to add dog. "
    answer= gets.chomp
  end

  def search(answer)
    if answer.to_i == 1
      puts "Enter name"
      a = gets.chomp
      r =  Walker.find_walker_by_name(a)
      i = 1
      r.each do |name|
        puts "#{i}. #{name}"
        i+= 1
      end
    elsif answer.to_i == 2
        puts "Enter Dog name"
        ans = gets.chomp
        puts "Enter breed"
        ans1 = gets.chomp
      puts "Has been walked? Enter true or false"
        ans2 = gets.chomp
        puts "Your dog has been added to the waitlist!"
      else
        puts "Please enter the correct number"
end
end



end
