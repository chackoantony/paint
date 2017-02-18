require 'minitest/autorun'
require_relative 'paint'

class TestPaint < MiniTest::Unit::TestCase
  def test_3x4_image
    image = Array.new(3) { Array.new(4) { rand(100) } }
    result_image = Array.new(3) { Array.new(4) { 22 } }
    assert_equal Paint.new(image).flood_fill(2, 2, 22), result_image
  end

  def test_5x5_image
    image = Array.new(5) { Array.new(5) { rand(100) } }
    result_image = Array.new(5) { Array.new(5) { 22 } }
    assert_equal Paint.new(image).flood_fill(0, 0, 22), result_image
  end
  
  def test_invalid_position
    image = Array.new(3) { Array.new(3) { rand(100) } }
    assert_equal Paint.new(image).flood_fill(5, 5, 22), image
  end
end
