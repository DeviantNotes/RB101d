require 'yaml'
PROMPTS = YAML.load_file('how_big_is_the_room?_prompts.yml')

def calculate_area(length, width)
  length.to_f * width.to_f
end

def convert_to_feet(area_in_meters)
  area_in_meters * 10.7639
end

def prompt(string)
  puts "=> #{string}"
end

prompt(PROMPTS['length'])
length = gets.chomp

prompt(PROMPTS['width'])
width = gets.chomp

area_mtrs = calculate_area(length, width).round(2)
area_ft = convert_to_feet(area_mtrs).round(2)

puts "The area of the room is #{area_mtrs} square meters (#{area_ft} square feet)."
