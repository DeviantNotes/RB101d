# define a method that takes a positive integer as an argument
#   -split the integer into single integers
#   -return the list of single integers as an array

def digit_list(num)
  num.digits.reverse
end

puts digit_list(12345)

puts digit_list(7)

puts digit_list(375290)

puts digit_list(444)