class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def append(data)
		if @head.nil?
			@head = Node.new(data)
		else 
			@head.set_next(data)
		end	
	end


	def count
		count = 0
		if !head.nil? && !head.next_node.nil?
			count = 2
		elsif !head.nil?
			count = 1
		end
	end

	def to_string
		head.data
	end
end
