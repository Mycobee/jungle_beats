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
	
	def insert(index, data)
		location_generator = "@head." + ("next_node." * (index - 1))
		before_node = eval(location_generator.chomp("."))
		after_node = before_node.next_node
		insert_node = Node.new(data)
		before_node.change_next(insert_node)
		insert_node.change_next(after_node)
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
	
	def find(index_start, word_count)
		beat_arry =	to_string.split(" ")
		index_end = index_start + word_count - 1	
		find_arry = []
		index_start.upto(index_end) do |index| 
			find_arry << beat_arry[index] + " "
		end
		find_arry.join.chop!	
	end
	
	def includes?(search_word)
		words = to_string.split(" ")
		!words.find do |word| 
			word == search_word
		end.nil?
	end
	
	def pop
  	index = to_string.split(" ").count
		node_location = "@head." + ("next_node." * (index - 2)).chop 
		eval(node_location).delete_next_node
	end
end
