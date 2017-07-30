# Define methods that take a name and generates a fake name
# Reverses name
def name_reverser(string)
# Swap first and last name
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
        		   name_array[counter] = vowel[vowel_counter + 1]
        		   break
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

end

# Add user interface
puts "Please enter your real name:"
real_name = gets.chomp.downcase

name_reverser(real_name)
p vowel_converter(name_reverser(real_name))