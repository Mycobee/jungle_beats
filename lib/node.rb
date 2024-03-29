class Node
	attr_reader :data,
							:next_node

	def initialize(data)
		@data = data
		@next_node = nil
	end

	def set_next(data)
		@next_node = Node.new(data)
	end

	def change_next(node)
		@next_node = node
	end
	
	def delete_next_node
		@next_node = nil
	end
end
