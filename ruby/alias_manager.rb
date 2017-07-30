# Define methods that take a name and generates a fake name
# Reverses name
def name_reverser(string)
# Swap first and last name
   name_array = string.split(' ').split('').reverse
end

# Change all vowels to next vowel in "aeiou"
def vowel_converter(array)
	new_array = []
    array.map! { |name| 
        new_array.push(name.split(''))
    }
    vowel = ['a', 'e', 'i', 'o', 'u']
    counter = 0
    vowel_counter = 0
    # Outer loop that loops through entire name (first and last)
        # while counter < length of first and last name
        #     Inner loop that loops through list of vowels, compares them with name, and changes vowels in name
        # 	  while vowel_counter < 4
        #         vowel_counter += 1
        #     end
        #     counter += 1
        #     vowel_counter = 0
        # end 
    return new_array
end
# Change all consonants to next consonant in alphabet
def consonant_converter(array)
end

# Add user interface
puts "Please enter your real name:"
real_name = gets.chomp.downcase

p name_reverser(real_name)
p vowel_converter(name_reverser(real_name))