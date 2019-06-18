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
end
