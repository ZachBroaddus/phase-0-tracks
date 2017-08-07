# Take a word from player 1
# Give player 2 a number of guesses that is equal to the length of the word in letters, plus a few
# Take a guess from player 2, in the form of a letter or a word if they would like to guess the word outright
# Compare the user's guess to the word entered by player 1
# If they guess the entire word correctly, end the game
# Each time a user makes a guess, reveal to the user whether the word contained their guess letter and the position(s) of their
# guess letter in the word
# All other letters in the word will be hidden from the user, but displayed as blank spaces
# Subtract from their number of remaining tries if they guess incorrectly, but
# if the user makes the same guess twice, do not count it against their total number of guesses
# Record the user's guess history
# Allow the user to make guesses until they run out of tries or until they guess the word correctly
# Display a congratulatory message if the player wins or a taunting message if they lose

# Game class
class WordGame
	attr_reader :tries_remaining, :won_game, :hidden_word

	def initialize(original_word)
		@original_word = original_word
		@original_word_array = Array.new
		@hidden_word = Array.new
		@guess_history = Array.new
		@tries_remaining = original_word.length + 3
		@won_game = false
		original_word.length.times { @hidden_word.push("_") }
	end

	def letter_match(guess)
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
		@guess_history.push(guess)
	end

	def repeat_guess(guess)
		used_a_try = true
		@guess_history.each do |letter|
			if letter == guess
				used_a_try = false
				break
			end
		end
		unless used_a_try == false
			@tries_remaining -= 1
		end
		@tries_remaining
	end

	def won_game?(guess)
		if guess == @original_word
			@won_game = true
		elsif @original_word_array == @hidden_word
			@won_game = true
		end
		@won_game
	end

	def parting_message(won_game)
		parting_message = ""
		if won_game
			parting_message = "Congratulations, you won!"
		else
			parting_message = "Wow, that was bad... I mean, really bad!"
		end
		parting_message
	end
end

# User interface
puts " "
puts "Welcome to Word Guess!"
puts "Player 1, please enter a word that your opponent must guess:"
original_word = gets.chomp.downcase
game = WordGame.new(original_word)
pretty_formatting_array = [" "]
puts pretty_formatting_array * 30
puts "Player 2, it's your turn!"

while game.tries_remaining > 0 && !game.won_game
	puts " "
	puts "Please enter a guess. You can enter a letter or try to guess the whole word: "
	guess = gets.chomp.downcase

	game.letter_match(guess)
	game.repeat_guess(guess)
	game.update_guess_log(guess)
	game.won_game?(guess)	
	puts " "

	if guess != original_word
		puts "Mystery word: #{game.hidden_word.join("")}"
	end

	if !game.won_game
		puts "#{game.tries_remaining} tries remaining"
		puts " "
	end
end

puts game.parting_message(game.won_game)