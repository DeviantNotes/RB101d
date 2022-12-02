# define reverse_sentence that takes a string
# -split string into words, store in array
# -reverse order of array
# -concatenate array

# def reverse_sentence(string)
#   words = string.split
#   reversed_words = ''
#   words.reverse.each do |word|
#     reversed_words << word + ' '
#   end
#   reversed_words.delete_suffix(' ')
# end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == ''