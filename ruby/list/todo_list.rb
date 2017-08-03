
class TodoList

	def initialize(list)
		puts "Initializing a new list..."
	    @list = list
	end

	def get_items
		@list
	end

	def add_item(list_item)
		@list << list_item
		@list
	end

	def get_item(list_item)
		@list[list_item]
	end

	def delete_item(list_item)
		@list.delete(list_item)
		@list
	end
end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.add_item("mop")
# p list.delete_item("do the dishes")
# p list.get_item(0)