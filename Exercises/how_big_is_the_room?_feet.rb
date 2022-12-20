require 'yaml'
PROMPTS = YAML.load_file('how_big_is_the_room?_feet_prompts.yml')

def calculate_area(length, width)
  length * width
end

def area_inches(length, width)
  (length * 12) * (width * 12)
end

def area_centimeters(length, width)
  (length * 30.48) * (width * 30.48)
end

def prompt(string)
  puts "=> #{string}"
end

prompt(PROMPTS['length'])
length = gets.chomp.to_f

prompt(PROMPTS['width'])
width = gets.chomp.to_f

area_ft = calculate_area(length, width).round(2)
area_inch = area_inches(length, width).round(2)
area_cent = area_centimeters(length, width).round(2)

puts "The area of the room is #{area_ft} square feet, #{area_inch} square inches, and #{area_cent} square centimeters."
