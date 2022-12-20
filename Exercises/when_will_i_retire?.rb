def prompt(string)
  puts "=> #{string}"
end

prompt('What is your age?')
age = gets.chomp.to_i

prompt('At what age would you like to retire?')
retirement = gets.chomp.to_i

current_year = Time.now.year
years_left = retirement - age
retirement_year = current_year + years_left

prompt("It's #{current_year}. You will retire in #{retirement_year}")
prompt("You have only #{years_left} years of work to go!")