class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(barks)
    barks.times{puts "Woof! "}
    barks
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    human_age * 7
  end

  def drool
    puts "*created a puddle of drool*"
  end

end

rover = Puppy.new
rover.fetch("bone")
rover.speak(5)
rover.roll_over
p rover.dog_years(10)
rover.drool