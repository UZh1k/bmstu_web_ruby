require 'minitest/autorun'
require_relative 'LR5_2_func.rb'

class TestString < Minitest::Test
    def test_change_example
      assert_equal 'кек ненене лолол', change('лолол ненен ненене лолол', 'кек')
    end
end
