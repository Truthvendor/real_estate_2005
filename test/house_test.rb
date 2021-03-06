require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")

    @room_1 = Room.new(:bedroom, 10, '13')
    @room_2 = Room.new(:bedroom, 11, '15')
    @room_3 = Room.new(:living_room, 25, '15')
    @room_4 = Room.new(:basement, 30, '41')

  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    assert_equal "$400000", @house.price
  end

  def test_it_has_no_rooms_to_start
    assert_equal [], @house.rooms
  end


  def test_it_can_add_rooms
    skip
    @house.add_room(@room_1)

    assert_equal @room_1, @house.rooms

    @house.add_room(@room_2)

    assert_equal @room_2, @house.rooms
  end

  def test_it_is_not_above_market_average
    assert_equal false, @house.above_market_average
  end

  def test_it_has_rooms_with_category
    skip
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)

    assert_equal :basement, @house.rooms_from_category(@room_4)
  end

  def test_it_has_square_footage
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)

    assert_equal 1900, @house.area
  end

  def test_a_house_has_details
    assert_equal (price: "$400000", address: "123 sugar lane"), @house.details
  end
end
