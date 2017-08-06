class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
# Getter methods


# Setter methods
def celebrate_birthday
	@age = @age += 1
end

def get_mad_at=(reindeer_name)
	@reindeer_ranking.length.times do |index_num|
       if @reindeer_ranking[index_num] == reindeer_name
       	  @reindeer_ranking[index_num], @reindeer_ranking[8] = @reindeer_ranking[8], @reindeer_ranking[index_num]
       end
	end
	puts "The new reindeer ranking is: #{@reindeer_ranking}"
end

def reset_gender=(new_gender)
	@gender = new_gender
	puts "New gender is: #{@gender}"
end

end

francine = Santa.new("female", "French")
francine.speak
francine.eat_milk_and_cookies("oatmeal raisin")
francine.celebrate_birthday
francine.get_mad_at = "Vixen"
francine.reset_gender = "male"

santa_array = []
example_genders = ["transgender", "female", "bigender", "male", "gender queer", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Korean", "prefer not to say", "Shark", "N/A"]
example_genders.length.times do |index_num|
  santa_array << Santa.new(example_genders[index_num], example_ethnicities[index_num])
  p santa_array[index_num]
end


