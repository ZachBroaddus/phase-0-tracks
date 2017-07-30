# Define methods that take a name and generate a fake name
# Swaps first and last name
def name_reverser(string)
   name_array = string.split(' ').reverse
   modified_name = name_array.join(' ')
end

# Change all vowels to next vowel in "aeiou"
def vowel_converter(string)
	name_array = string.split('')
    vowel = ['a', 'e', 'i', 'o', 'u']
    counter = 0
    vowel_counter = 0
# Outer loop that loops through entire name (first and last)
        while counter < name_array.length
# Inner loop that loops through list of vowels, compares them with name, and changes vowels in name
        	while vowel_counter < vowel.length
        		if name_array[counter] == vowel[vowel_counter]
                    if name_array[counter] == 'u'
                    	name_array[counter] = 'a'
                        break
                    else	
        		        name_array[counter] = vowel[vowel_counter + 1]
        		        break
        		    end
        	    end
                vowel_counter += 1
            end
            counter += 1
            vowel_counter = 0
        end 
    return name_array
end

# Change all consonants to next consonant in alphabet
def consonant_converter(string)
    name_array = string
    consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    counter = 0
    consonant_counter = 0
# Outer loop that loops through entire name (first and last)
        while counter < name_array.length
# Inner loop that loops through list of consonants, compares them with name, and changes consonants in name
        	while consonant_counter < consonant.length
        		if name_array[counter] == consonant[consonant_counter]
                    if name_array[counter] == 'z'
                    	name_array[counter] = 'b'
                        break
                    else	
        		        name_array[counter] = consonant[consonant_counter + 1]
        		        break
        		    end
        	    end
                consonant_counter += 1
            end
            counter += 1
            consonant_counter = 0
        end 
    new_name = name_array.join('')
    new_name = new_name.split(' ')
    new_name.map! { |word| word.capitalize! }
    new_name = new_name.join(' ')
    return new_name
end



# Add user interface and store both real name and fake name in a hash
puts "Welcome to the Spy Name Generator!"

real_name = ""
name_hash = Hash.new
until real_name == "quit"
	puts " "
	puts "Please enter your real name ('quit' to exit):"
	real_name = gets.chomp
		if real_name != "quit"
		name_hash.store(real_name, "")
		hash_real_name = real_name
		real_name = real_name.downcase
		spy_name = consonant_converter(vowel_converter(name_reverser(real_name)))
	    puts "Your spy name is: #{spy_name}!"
	    name_hash[hash_real_name] = spy_name
	end
end

# Display all name data from the hash
puts " "
name_hash.each { |key, value| 
puts "#{key} is also known as #{value}."
}
