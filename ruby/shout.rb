module Shout
    def self.yell_angrily(words)
    	words + "!!!" + " :("
    end

    def self.yelling_happily(words)
    	words + " Happy!" * 2 + " Joy!" * 2
    end
end

puts Shout.yell_angrily("Oh no, NOT AGAIN")
puts Shout.yelling_happily("Yasssss")