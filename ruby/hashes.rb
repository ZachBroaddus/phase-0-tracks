# Convert user input for wood floor preference to boolean
def bool_converter(string_to_bool)
    if string_to_bool == "y"
        return string_to_bool = true	
    end
    if string_to_bool == "n"
        return string_to_bool = false	
    end
end

# Prompt user for client info and convert user input to appropriate data type
# Gather client name, age, number of children, decor theme, wall covering preference, hardwood floor preference (y/n)
puts " "
puts "Welcome to Client Tracker!"
puts "******************************"
puts " "
puts "Please enter the client's name:"
client_name = gets.chomp
puts "Please enter the client's age:"
client_age = gets.to_i
puts "How many children does the client have?:"
num_children = gets.to_i
puts "What is the client's preferred decor theme?:"
decor_theme = gets.chomp
puts "What is the client's wall covering preference?:"
wall_covering = gets.chomp
puts "Finally, does the client want hardwood floors? (y/n):"
wood_floor = gets.chomp
wood_floor = bool_converter(wood_floor)

client_info = Hash.new
parting_message = "Exiting the program, goodbye!"

# Push user input into hash
client_info = {
    :client_name => client_name,
    :client_age => client_age,
    :num_children => num_children,
    :decor_theme => decor_theme,
    :wall_covering => wall_covering,
    :wood_floor => wood_floor
}

# Print hash to screen once user input has been gathered
puts "Here is the hash:"
p client_info

# Ask user if they would like to update a hash key:
puts "Would you like to update any of the client's preferences? (y/n):"
update = gets.chomp
update = bool_converter(update)
    if update == true
		puts "Which preference would you like to update?"
		puts "client_name, client_age, num_children, decor_theme, wall_covering, wood_floor, or none:"
		key_to_update = gets.chomp

#     If user enters "none", skip the rest and proceed to end	
#     If user enters valid key name, ask for new value and update corresponding key	
        if key_to_update != "none"
        	puts "Please enter the new value: "
        	new_value = gets.chomp
        	if key_to_update == "client_age" || key_to_update == "num_children"
        		new_value = new_value.to_i
        	end
        	if key_to_update == "wood_floor"
        		new_value = bool_converter(new_value)
        	end
        	key_to_update = key_to_update.to_sym
        	client_info[key_to_update] = new_value

#     Reprint hash if updated
        	puts "Here is the updated hash:"
        	p client_info
        end	
	end
puts parting_message