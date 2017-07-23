puts "What is your name?"
employee_name = gets.chomp
puts "How old are you?"
employee_age = gets.to_i
puts "What year were you born?"
employee_birth_year = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_preference = gets.chomp
puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance_preference = gets.chomp

current_year = Time.new.year
vampire_status = ""

if (employee_age == current_year - employee_birth_year || employee_age == current_year - employee_birth_year - 1) && (garlic_preference == "y" || insurance_preference == "y") && (employee_name != "Drake Cula" && employee_name != "Tu Fang")
	vampire_status = "Probably not a vampire."
elsif (employee_age != current_year - employee_birth_year && employee_age != current_year - employee_birth_year - 1) && ((garlic_preference == "n" && insurance_preference == "y") || (garlic_preference == "y" && insurance_preference == "n")) && (employee_name != "Drake Cula" && employee_name != "Tu Fang")
    vampire_status = "Probably a vampire."
elsif (employee_age != current_year - employee_birth_year && employee_age != current_year - employee_birth_year - 1) && (garlic_preference == "n" && insurance_preference == "n") && (employee_name != "Drake Cula" && employee_name != "Tu Fang")
	vampire_status = "Almost certainly a vampire."
elsif (employee_age == current_year - employee_birth_year || employee_age == current_year - employee_birth_year - 1 || employee_age != current_year - employee_birth_year || employee_age != current_year - employee_birth_year - 1) && (garlic_preference == "y" || garlic_preference == "n") && (insurance_preference == "y" || insurance_preference == "n") && (employee_name == "Drake Cula" || employee_name == "Tu Fang")
	vampire_status = "Definitely a vampire."
else
	puts "Results inconclusive."
end

puts vampire_status
