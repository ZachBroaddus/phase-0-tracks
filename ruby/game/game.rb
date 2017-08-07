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
	attr_reader :won_game

	def initialize(original_word)
# Input: word entered by player 1, set to variable
# Also initialize partially revealed word to array of blank spaces, guess history log to empty array,
# number of tries remaining according to length of player 1 word, and won_game to false
		@original_word = original_word
		@original_word_array = Array.new
		@hidden_word = Array.new
		@guess_history = Array.new
		@tries_remaining = original_word.length
		@won_game = false
		original_word.length.times { @hidden_word.push("_") }
	end

	def letter_match(guess)
# Compare player 2 guess to player 1 word and update hidden word to reveal letters that the player guesses correctly
# Input: player 2 guess
# Output: updated partially revealed word
			@original_word_array = @original_word.split("")
			index_num = 0
			@original_word_array.each do 
				if @original_word_array[index_num] == guess
					@hidden_word[index_num] = guess
				end
				index_num += 1
			end
		@hidden_word
	end

	def update_guess_log(guess)
# Add guess to guess history log
# Input: player 2 guess
		@guess_history.push(guess)
	end

	def repeat_guess(guess)
# Check to see if guess is a repeat and decrement from total tries if it is not
# Input: player 2 guess
# Output: updated guess counter
		index_num = 0
		used_a_try = true
		@guess_history.each do
			if @guess_history[index_num] == guess
				used_a_try = false
				break
			end
		end
		if used_a_try == true
			@tries_remaining -= 1
		end
		@tries_remaining
	end

	def won_game(guess)
		if guess == @original_word
			@won_game = true
		elsif @original_word == @hidden_word
			@won_game = true
		end
		@won_game
	end

	def parting_message(won_game)
# Display winning or losing message
# Input: won game?
# Output: parting message
	end
end
guess = "n"
game = WordGame.new("unicorn")
p game.letter_match(guess)
p game.repeat_guess(guess)
p game.update_guess_log(guess)