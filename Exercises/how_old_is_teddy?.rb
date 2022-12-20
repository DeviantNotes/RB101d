def how_old(name)
  name = "Teddy" if name.strip.empty?
  puts "#{name.capitalize} is #{rand(20..200)} years old!"
end

puts "=> Please enter a name:"
name = gets.chomp

how_old(name)