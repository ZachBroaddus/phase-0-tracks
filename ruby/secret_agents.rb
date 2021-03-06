
# For the Encrypt Method
#  pass a string into a the method as a parameter
#  loop through the string one at a time using the index
#  run a .next on each letter in the string
#        - if a letter use .next
#        - otherwise skip
#  assuming need to change long term, run bang!


def encrypt(string)
  x = string.length
  i = 0
  word = ""
  while x > 0
    if string[i] != " " && string[i] != "z"
      letter = string[i].next
      i += 1
    elsif string[i] == "z"
      letter = "a"
      i += 1
    else
      letter = string[i]
      i += 1
    end
  x -= 1
  word += letter
  end
  return word
end

#Test to see if encryption is functioning:
# encrypted_word = encrypt("zed")



# For our Decrypt Method
# make a variable of whole alphabet
# pass in our encrypted string as a parameter
#   loop through encrypted string one letter at time
#   find matching letter in alphabet
#       - when we find matching letter, give us back the index of that letter
#       - subtract one index point
#       - give us back the letter at that index point
#  print out the decrypted word


def decrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    x = 0
    i = 0
    word = ""
    while x < string.length
      letter = string[i]
          if string[i] == " "
            secret_letter = " "
          else
          secret_letter = alphabet[alphabet.index(letter) - 1]
          end
      x += 1
      i += 1
      word += secret_letter
    end
    return word
end

#Test to see if decryption is functioning:
# puts decrypt(encrypted_word)


# A nested method call like <decrypt(encrypt("swordfish"))> works because the 'encrypt' method is running first and returning
# the encrypted word. That value is then passed into the 'decrypt' method as an argument and decrypted.

# User Interface:
# Put everything inside a loop
# Ask secret agent "Do you want to encrypt or decrypt?"
#     -If they want to encrypt:
#         -Ask them for the password they want to encrypt
#         -Call encrypt method on the password
#         -Print the result
#         -Break loop
#      -Elsif they want to decrypt:
#          -Ask them for the password they want to decrypt
#          -Call the decrypt method on the password
#          -Print the result
#          -Break loop
#       -Else (Agent inputs non-supported value):
#          -Print error message
#          -Restart from the beginning

finished = ""

while finished != true
puts "Do you want to encrypt or decrypt"
answer = gets.chomp

    if answer == "encrypt"
        puts "Please enter the password that you would like to encrypt."
        password = gets.chomp
        puts "Your encrypted password is #{encrypt(password)}."
        finished = true
    elsif answer == "decrypt"
        puts "Please enter the encrypted password that you would like to decrypt."
        password = gets.chomp
        puts "Your decrypted password is #{decrypt(password)}."
        finished = true
    else 
        puts "Invalid Entry"
        puts ""
    end
end