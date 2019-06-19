class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def append(data)
		if @head.nil?
			@head = Node.new(data)
		else 
			last_node.set_next(data)
		end	
	end

	def prepend(data)
		new_head = Node.new(data)
		new_head.change_next(@head)	
		@head = new_head
	end

	def last_node
		node = head
		while !node.next_node.nil?
			node = node.next_node
		end
		node
	end

	def count
		node_array = [] 
		if !head.nil?
			node = head
			node_array << node
		end

		while !node.nil? && !node.next_node.nil? 
			node = node.next_node
			node_array << node
		end
		node_array.size
	end

	def to_string
		node = @head
		list_string = ""
		until node.nil?
			list_string += node.data + " " 
			node = node.next_node
		end
		list_string.chop!
	end
end
