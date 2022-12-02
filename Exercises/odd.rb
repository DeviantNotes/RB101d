def is_odd?(num)
  true if num.remainder(2) == 1 || num.remainder(2) == -1
end

if is_odd?(-7)
  puts "YES"
else
  puts "NO"
end