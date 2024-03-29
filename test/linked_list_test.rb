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
		assert_equal 0, @list.count

		@list.append("doop")
		assert_equal 1, @list.count

		@list.append("deep")
		assert_equal 2, @list.count

		@list.append("pop")
		assert_equal 3, @list.count
	end

	def test_it_can_convert_the_list_to_string
		@list.append("doop")
		assert_equal "doop", @list.to_string

		@list.append("deep")
		assert_equal "doop deep", @list.to_string

		@list.append("pop")
		assert_equal "doop deep pop", @list.to_string

	end

	def test_it_can_return_last_node
		@list.append("doop")
		@list.append("deep")
		@list.append("pop")
		
		assert_equal "pop", @list.last_node.data
	end

	def test_list_with_head_appends_to_next_node
		@list.append("doop")
		@list.append("deep")
		@list.append("pop")

		assert_equal "doop", @list.head.data
		assert_equal "deep", @list.head.next_node.data
		assert_equal "pop", @list.head.next_node.next_node.data
	end

	def test_it_can_prepend_list_with_new_head
		@list.append("doop")
		@list.append("deep")
		@list.append("bang")	
		@list.prepend("pop")
		expected = "pop doop deep bang"
		
		assert_equal expected, @list.to_string	
	end

	def test_it_can_insert_node_in_to_list
		@list.append("doop")
		@list.append("bang")	
		@list.append("pop")
		@list.insert(1, "wow")
		expected = "doop wow bang pop"
		actual = @list.to_string	

		assert_equal expected, actual
	end

	def test_it_can_find_and_return_elements
		@list.append("pop")
		@list.append("doop")
		@list.append("deep")
		@list.append("bang")	
		actual_1 = @list.find(2, 1)
		expected_1 = "deep"
		actual_2 = @list.find(1, 3)
		expected_2 = "doop deep bang"

		assert_equal expected_1, actual_1
		assert_equal expected_2, actual_2
	end
	
	def test_it_can_see_words_include?
		@list.append("pop")
		@list.append("doop")
		@list.append("deep")
		@list.append("bang")	
		actual_1 = @list.includes?("deep")
		actual_2 = @list.includes?("wham")

		assert actual_1
		refute actual_2
	end
	
	def test_it_can_pop_off_the_last_node
		@list.append("doop")
		@list.append("deep")
		@list.append("bang")	
		@list.append("pop")
		@list.pop
		actual = @list.to_string
		expected = "doop deep bang"

		assert_equal expected, actual
	end
end
