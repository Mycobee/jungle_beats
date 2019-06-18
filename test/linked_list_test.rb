require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
	def setup
		@list = LinkedList.new
	end

	def test_it_exists
		assert_instance_of LinkedList, @list
	end
end
