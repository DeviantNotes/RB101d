require 'pry'

def prompt(string)
  puts "=> #{string}"
end

def calculate_tip(bill, tip_percent)
  bill * (tip_percent * 0.01)
end

def calculate_total(bill, tip_amount)
  bill + tip_amount
end

prompt('What is the bill?')
bill = gets.chomp.to_f

prompt('What is the tip percentage?')
tip_percent = gets.chomp.to_f

tip = calculate_tip(bill, tip_percent)

prompt("The tip is $#{sprintf('%.2f', tip)}")
prompt("The total is $#{sprintf('%.2f', calculate_total(bill, tip))}")