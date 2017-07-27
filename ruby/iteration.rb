# Release 0:
# Write a Method That Takes a Block
def block_testing
  student1 = "John"
  student2 = "Jane"
  puts "The student has not begun racing yet."
  yield(student1, student2)
end
block_testing { |student1, student2| puts "The students #{student1} and #{student2} have begun running for the race." }
puts " "

# Release 1:
# Declare an Array
type_of_food = ["sausage", "pizza", "waffles"]
type_of_food.each do |food|
  puts "I am hungry!!! I want #{food}!!!"
end
type_of_food.map! do |food|
  food.upcase
end
puts " "
type_of_food.each do |food|
  puts "I am hungry!!! I want #{food}!!!"
end
puts " "

# Declare a Hash
ethnic_cuisine = {'German' => 'sausage', 'Italian' => 'pizza', 'American' => 'waffles'}
ethnic_cuisine.each do |ethnicity, food|
  puts "If you are in the mood for #{ethnicity} cuisine, then eat #{food}."
end

# Release 2:
# The methods are all commented out so they do not affect one another. To test each, please uncomment and test one at a time.

# Array Methods:
# Solution to 1
# type_of_food.delete_if {|food| food == "SAUSAGE"}
# p type_of_food

# Solution to 2
# p type_of_food.keep_if {|food| food == "SAUSAGE"}

# Solution to 3
# p type_of_food.drop_while {|food| food != "WAFFLES"}

# Solution to 4
# p type_of_food.take_while {|food| food != "WAFFLES"}


# Hash Methods:
# Solution to 1
# ethnic_cuisine.delete_if {|ethnicity, food| ethnicity == 'Italian'}
# p ethnic_cuisine

# Solution to 2
# p ethnic_cuisine.keep_if {|ethnicity, food| ethnicity == 'Italian'}

# Solution to 3
# print ethnic_cuisine.drop_while {|ethnicity, food| ethnicity != 'Italian'}

# Solution to 4
# p ethnic_cuisine.take_while {|ethnicity, food| ethnicity != 'Italian'}
