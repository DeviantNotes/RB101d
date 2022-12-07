# def stringy(num)
#   stringy = ''
#   core = num / 2
#   extra = num % 2
#   core.times {stringy << '10'}
#   extra.times {stringy << '1'}
#   stringy
# end

def stringy(size, num = 1)
  numbers = []

  size.times do |index|
    number = index.even? ? num : (1 == num ? 0 : 1)
    numbers << number
  end

  numbers.join
end

puts stringy(6, 0) == '101010'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '1010'
puts stringy(7) == '1010101'