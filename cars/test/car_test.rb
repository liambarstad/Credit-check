require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'car.rb'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new
    assert_equal Car, car.class
  end

  def test_init_zero
    car = Car.new
    expected = 0
    actual = car.curent_speed
    assert_equal expected, actual
  end
end
