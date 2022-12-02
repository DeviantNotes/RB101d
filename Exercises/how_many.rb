# define method count_occurences with array as argument
#   -create separate array of unique values
#     -use separate array as labels, compare to original array for values
#   -return labels & values

def count_occurences(vehicles)
  index_counter = 0
  loop do
    unique = vehicles.uniq
    frequency = vehicles.count { |vehicle| vehicle == unique[index_counter] }
    puts "#{unique[index_counter]} => #{frequency}"
    index_counter += 1
    break if index_counter > unique.size
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)