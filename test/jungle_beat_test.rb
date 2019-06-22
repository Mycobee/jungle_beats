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
	
	def test_it_can_append_multiple_beats_in_to_nodes
		@jb.append("deep doo ditt")
		expected_1 = "deep"
		expected_2 = "doo"
		expected_3 = "ditt"
		actual_1 = @jb.list.head.data
		actual_2 = @jb.list.head.next_node.data
		actual_3 = @jb.list.head.next_node.next_node.data

		assert_equal expected_1, actual_1
		assert_equal expected_2, actual_2
		assert_equal expected_3, actual_3

	end
	
	def test_it_can_count_all_beats_in_its_list
		@jb.append("deep doo ditt")
		@jb.append("woo hoo shu")

		assert_equal 6, @jb.count
	end

	def test_it_can_play_some_sick_beats
		@jb.append("deep doo ditt woo hoo shu")
		expected = `say -r 500 "deep doo ditt woo hoo shu"`
		actual = @jb.play
	
		assert_equal expected, actual
	end
end
