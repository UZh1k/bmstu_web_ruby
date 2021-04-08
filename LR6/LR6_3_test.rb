require 'minitest/autorun'
require_relative 'LR6_3_func.rb'

class TestBlock < Minitest::Test
	def test_change_example
		assert_equal 0.8468426854614437, intg(100, 0.1, 1) { |x| Math.sin(x)/x }
	end
end