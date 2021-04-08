require 'minitest/autorun'
require_relative 'LR5_1_func.rb'

class TestString < Minitest::Test
	def test_change_example
		assert_equal 1.0, count(2, 2)
	end
end