
class TodoList

def initialize(list)
	puts "Initializing a new list..."
    @list = list
end

	def get_items
		@list
	end

	def add_item(mop)
		@list << mop
		
	end
	def del_item
		
	end
	def get_item
		
	end
end

list = TodoList.new(["do the dishes", "mow the lawn"])