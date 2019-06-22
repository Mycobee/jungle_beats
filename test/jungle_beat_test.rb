require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'


class JungleBeatTest < Minitest::Test
	def setup
		@jb = JungleBeat.new
	end
	
	def test_it_exists
		assert_instance_of JungleBeat, @jb
	end

	def test_it_is_created_with_empty_linked_list
		assert_instance_of LinkedList, @jb.list
		
		assert_nil @jb.list.head
	end
end
