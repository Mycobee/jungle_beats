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

	def test_it_has_a_nil_head_by_default
		assert_nil @list.head
	end
	
	def test_it_can_append_head
		@list.append("doop")

		assert_instance_of Node, @list.head
		assert_nil @list.head.next_node
	end
	
	def test_it_can_count_things_in_list
		@list.append("doop")
		assert_equal 1, @list.count
	end

	def test_it_can_convert_the_list_to_string
		@list.append("doop")
		assert_equal "doop", @list.to_string
	end
end
