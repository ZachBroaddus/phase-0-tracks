puts "Hello and welcome to the Werewolf Inc. new employee onboarding survey!"
puts "How many employees will we be processing?"
employee_count = gets.to_i
puts "Great! Please have each employee answer the following questions:"
puts " "

loop_counter = 0
while loop_counter < employee_count
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
	status_determined = false


	# Employee gets age right and wants garlic bread, health insurance, or both.
	if (employee_age == current_year - employee_birth_year || employee_age == current_year - employee_birth_year - 1) && (garlic_preference == "y" || insurance_preference == "y")
		vampire_status = "Probably not a vampire."
		status_determined = true
	end

	# Employee gets age wrong and doesn't want either garlic bread, health insurance, or both.
	if (employee_age != current_year - employee_birth_year && employee_age != current_year - employee_birth_year - 1) && (garlic_preference == "n" || insurance_preference == "n")
	    vampire_status = "Probably a vampire."
		status_determined = true
	end

	# Employee gets age wrong and rejects both garlic bread and health insurance.
	if (employee_age != current_year - employee_birth_year && employee_age != current_year - employee_birth_year - 1) && (garlic_preference == "n" && insurance_preference == "n")
		vampire_status = "Almost certainly a vampire."
		status_determined = true
	end

	# Employee name is either Drake Cula or Tu Fang.
	if (employee_name == "Drake Cula" || employee_name == "Tu Fang")
		vampire_status = "Definitely a vampire."
		status_determined = true
	end
    
    # Internal loop requesting employee allergy info. Could change loop to include instances where name is 'Drake Cula' or 'Tu Fang' and set vampire_status accordingly.
        finished = false
	    while finished == false
	    	puts "Do you have any allergies? Please enter allergies one at a time. Enter 'done' when finished."
	    	employee_allergy = gets.chomp
            
            if employee_allergy == "sunshine"
            	vampire_status = "Probably a vampire."
            	status_determined = true
            	finished = true
            end

            if employee_allergy == "done"
                finished = true
            end
        end

	# If 'status_determined' flag has been set to true (Any of the above conditions evaluated to true), 'vampire_status' has been assigned a value and can be printed.
	if status_determined == true
		puts "********************************************************************************************"
		puts " "
	    puts "Vampire status is: #{vampire_status}"
	else
		puts "********************************************************************************************"
		puts " "
		puts "Vampire status is: Results inconclusive."
	end
	puts " "
	loop_counter += 1

	if loop_counter < employee_count
		puts "Next employee:"
		puts " "
	else 
		puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	end
end

