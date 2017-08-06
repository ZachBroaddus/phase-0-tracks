class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender, :reindeer_ranking

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

# Setter methods that were removed after refactoring. Left in as comments to show that Release 2 was completed.
	# def celebrate_birthday
	# 	@age = @age += 1
	# end

	# def get_mad_at=(reindeer_name)
	# 	@reindeer_ranking.length.times do |index_num|
	#        if @reindeer_ranking[index_num] == reindeer_name
	#        	  @reindeer_ranking[index_num], @reindeer_ranking[8] = @reindeer_ranking[8], @reindeer_ranking[index_num]
	#        end
	# 	end
	# 	puts "The new reindeer ranking is: #{@reindeer_ranking}"
	# end

	# def reset_gender=(new_gender)
	# 	@gender = new_gender
	# 	puts "New gender is: #{@gender}"
	# end
end

# Driver code used to test program
# francine = Santa.new("female", "French")
# francine.speak
# francine.eat_milk_and_cookies("oatmeal raisin")
# francine.celebrate_birthday
# francine.get_mad_at = "Vixen"
# francine.reset_gender = "male"
# puts francine.age
# puts francine.ethnicity

# Santa initializations. Left in to show that Release 1 was completed.
# santa_array = []
example_genders = ["transgender", "female", "bigender", "male", "gender queer", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Korean", "prefer not to say", "Shark", "N/A"]
# example_genders.length.times do |index_num|
#   santa_array << Santa.new(example_genders[index_num], example_ethnicities[index_num])
#   p santa_array[index_num]
# end

# Release 4
100.times do ||
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	@age = rand(0..140)
	puts "Santa Stats---Age: #{@age}, Gender: #{santa.gender}, Ethnicity: #{santa.ethnicity}"
	puts " "
end

