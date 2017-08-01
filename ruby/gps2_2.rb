# Releases 0 and 1
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create a hash
  # Split the list string at the spaces creating an array
  # Iterate over the array and feed each piece of data into a hash
  # set default values all to 1
  # print the list to the console [can you use one of your other methods here?]
# output: a hash where the keys are the items and the values are the quantities

def create_list(string)
    grocery_list = Hash.new
    string.split(" ").each{ |item| grocery_list.store(item, 1) }
    grocery_list
end

# Method to add an item to our_list or any other list created using the create_list method
# input: list, item name, and optional quantity
# steps: feed item name and quantity (or default quantity) to the list
# output: updated list

def add_to_list(list, item, quantity = 1)
    list.store(item, quantity)
    list
end

# Method to remove an item from the list
# input: list, item name to remove
# steps: iterate over list hash and remove desired item
# output: updated list

def remove_from_list(list, item)
    list.delete(item)
    list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: feed the item & quantity to the list
# output: updated list

def update_list(list, item, quantity)
  list[item] = quantity
  list
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate over the hash and puts it to a single line per item
# output: prettified list

def pretty_list(list)
  puts "~~~Grocery List~~~"
  list.each{ |item, quantity| puts "#{item}: #{quantity}" }
  list
end

our_list = create_list("carrots apples cereal pizza")
add_to_list(our_list, "beer", 12)
remove_from_list(our_list, "carrots")
update_list(our_list, "beer", 24)
pretty_list(our_list)

# Release 2
excellent_list = create_list("Onions")
add_to_list(excellent_list, "Lemonade", 2)
add_to_list(excellent_list, "Tomatoes", 3)
add_to_list(excellent_list, "Ice Cream", 4)
remove_from_list(excellent_list, "Lemonade")
update_list(excellent_list, "Ice Cream", 1)
pretty_list(excellent_list)

# Release 3
# A word on refactoring:
# We, the developers, found the the aforementioned methods created, are well written, concise, and efficient.
#
# We are very happy with our beer, and dismiss this word on refactoring.
#
# If you are reading this, please send more beer.
# Thank you.
# ==============================
# The real word on Refactoring:
# We weren't able to find any additional methods to make the code run more efficiently or make it more concise 
# than it already is.


#                   Release 4: Reflect
# What did you learn about pseudocode from working on this challenge?
# Pseudocode allows the developer to break down problems into small chunks written in plain English. If done properly, 
# your pseudocode will serve as a step-by-step guide or template for tackling the overall challenge.
#
# What are the tradeoffs of using arrays and hashes for this challenge?
# A hash makes sense, because it allows you to store the items in the list as keys with associated quantity values. 
# An array based approach would require separate arrays for the item names and quantities OR a mixed array of strings 
# and integers.
#
# What does a method return?
# A method returns the last thing that it evaluates.
#
#
# What kind of things can you pass into methods as arguments?
# It seems like you can pass nearly anything into a method as an argument: variables, data structures, blocks,
# the return value of another method, etc.
#
# How can you pass information between methods?
# You can pass a method call for a method (method1) to another method (method2) as an argument, which will in effect pass
# the return value of method1 to method2 as an argument. You could also store the return value of method1 in a variable
# and then pass that variable to method2, but that takes an extra step that may not be necessary.
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# Our guide (Laura) really emphasized the importance of writing good pseudocode in order to break the project down logically
# into smaller pieces. Refactoring seems like it will take a lot of practice, but we've just barely learned about it. I trust
# that I'll feel more comfortable with it as I gain experience and practice.