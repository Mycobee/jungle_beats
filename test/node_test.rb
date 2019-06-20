require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test
	def setup
		@node = Node.new("plop")
	end
	
	def test_it_exists
		assert_instance_of Node, @node
	end
	
	def test_it_accepts_initialization_argument_as_data_attribute
		assert_equal "plop", @node.data
	end

	def test_it_starts_with_default_nil_next_node
		assert_nil @node.next_node	
	end

	def test_it_can_set_next_node
		@node.set_next("doop")
		
		assert_instance_of Node, @node.next_node
		assert_equal "doop", @node.next_node.data
	end

	def test_it_can_change_next_node
		new_node = Node.new("beep")
		@node.change_next(new_node)
		assert_equal new_node, @node.next_node
	end

	def test_it_can_delete_node
		new_node = Node.new("beep")
		new_node.delete_node
		assert_nil new_node
	end
end
