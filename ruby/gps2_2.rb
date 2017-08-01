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
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

our_list = create_list("carrots apples cereal pizza")
add_to_list(our_list, "beer", 12)
puts remove_from_list(our_list, "carrots")