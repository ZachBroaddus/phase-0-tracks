# Take a word from player 1
# Give player 2 a number of guesses that is equal to the length of the word in letters
# Take a guess from player 2, in the form of a letter or a word if they would like to guess the word outright
# Allow the user to solve the puzzle at any time by guessing the word outright
# Compare the user's guess to the word entered by player 1
# Subtract from their number of remaining tries if they guess incorrectly
# Record the user's guess history
# If the user makes the same guess twice, do not count it against their total number of guesses
# Each time a user makes a guess, reveal to the user whether the word contained their guess letter and the position(s) of their
# guess letter in the word
# All other letters in the word will be hidden from the user, but displayed as blank spaces
# Allow the user to make guesses until they run out of tries or until they guess the word correctly
# Display a congratulatory message if the player wins or a taunting message if they lose

class WordGame
	def initialize(original_word)
# Input: word entered by player 1, set to variable
# Also initialize partially revealed word to array of blank spaces, guess history log to empty array,
# number of tries remaining according to length of player 1 word, and won_game to false
	end

	def guess_match(guess)
# Compare player 2 guess to player 1 word and update word to reveal letters that the player guesses correctly
# Input: player 2 guess
# Output: updated partially revealed word
	end

	def repeat_guess(guess)
# Check to see if guess is a repeat and decrement from total tries if it is not
# Input: player 2 guess
# Output: updated guess counter
	end

	def update_guess_log(guess)
# Add guess to guess history log
# Input: player 2 guess
	end

	def parting_message(won_game)
# Display winning or losing message
# Input: won game?
# Output: parting message
	end
end