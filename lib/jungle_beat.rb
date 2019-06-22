class JungleBeat
	attr_reader :list

	def initialize
		@list = LinkedList.new
	end
	
	def append(beat_string)
		beat_arry = beat_string.split(" ")
		beat_arry.each {|beat| list.append(beat)}
	end

	def count
		list.count
	end
end
