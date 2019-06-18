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
end
