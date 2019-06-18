class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def append(data)
binding.pry
		if @head.nil?
binding.pry
			@head = Node.new(data)
		else 
			@head.set_next(data)
binding.pry
		end	
binding.pry
	end

	def count
		if !head.nil?
			count = 1
		end
	end

	def to_string
		head.data
	end
end
