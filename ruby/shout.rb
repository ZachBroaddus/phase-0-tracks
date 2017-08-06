# Stand-alone module
# module Shout
#     def self.yell_angrily(words)
#     	words + "!!!" + " :("
#     end

#     def self.yelling_happily(words)
#     	words + " Happy!" * 2 + " Joy!" * 2
#     end
# end

# Mixin module
module Shout
    def yell_angrily(words)
    	words + "!!!" + " :("
    end

    def yelling_happily(words)
    	words + " Happy!" * 2 + " Joy!" * 2
    end
end

class Singer
	include Shout

	def initialize
		puts "Initializing a new singer..."
	end
end

class Auctioneer
	include Shout

	def initialize
		puts "Initializing a new auctioneer..."
	end
end

# Driver code to test stand-alone module
# puts Shout.yell_angrily("Oh no, NOT AGAIN")
# puts Shout.yelling_happily("Yasssss")

# Driver code to test mixin module
singer = Singer.new
puts singer.yell_angrily("Gen'rals gathered in their masses,
Just like witches at black masses")
puts singer.yelling_happily("I'm walking on sunshine")
puts " "

auctioneer = Auctioneer.new
puts auctioneer.yell_angrily("Please sit down, sir")
puts auctioneer.yelling_happily("SOLD to the man in the pink Crocs")
puts " "