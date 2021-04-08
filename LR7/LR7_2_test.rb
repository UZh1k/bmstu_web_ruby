load 'LR7_2_func.rb'
require 'minitest/autorun'

class TestRectangle < Minitest::Test
  def test_square_returns_true_if_length_eq_to_width
    assert_equal 6, Board.new(2, 3).area
  end

  def test_type_returns_cube_if_all_dims_equal
    assert_equal 6, Box.new(1, 2, 3).volume
  end
end