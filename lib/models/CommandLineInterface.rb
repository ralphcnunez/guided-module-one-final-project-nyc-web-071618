class CommandLineInterface

def run
    greet
    answer = gets_user_input
    search(answer)
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
      puts Walker.find_walker_by_name(a)
    elsif answer.to_i == 2
        puts "Enter Dog name"
        ans = gets.chomp
        puts "Enter breed"
        ans1 = gets.chomp
      puts "Has been walked? Enter true or false"
        ans2 = gets.chomp
        puts "Your dog has been added to the waitlist!"
      else
        puts "Enter the correct number"
end
end



end
