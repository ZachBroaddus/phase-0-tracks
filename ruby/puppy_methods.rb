# Releases 0-1
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

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

rover = Puppy.new
rover.fetch("bone")
rover.speak(5)
rover.roll_over
p rover.dog_years(10)
rover.drool

# Release 2
class T_rex

  def initialize
    puts "Wrangling a new T-Rex..."
  end

  def snarl
    puts "ROOOOOAAAAAARRR!!"
  end

  def rend_flesh
    puts "*Eats an avocado whole!*"
  end

end

steve = T_rex.new
steve.snarl
steve.rend_flesh

t_rex_array = []
50.times do
  carl = T_rex.new
  t_rex_array.push(carl)
end

t_rex_array.each do |baby_t_rex|
  baby_t_rex.snarl
  baby_t_rex.rend_flesh
end