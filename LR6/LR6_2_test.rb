require 'minitest/autorun'
require_relative 'LR6_2_func.rb'

class TestString < Minitest::Test
	def test_change_example
		assert_equal 0.24027849299525628, print(0.001)
	end
end