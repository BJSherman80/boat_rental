require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < Minitest::Test

  def test_it_exists
    kayak = Boat.new(:kayak, 20)

    assert_instance_of Boat, kayak
  end

  def test_it_has_a_type
    kayak = Boat.new(:kayak, 20)

    assert_equal :kayak, kayak.type
  end

  def test_it_has_a_price_per_hour
    kayak = Boat.new(:kayak, 20)
    assert_equal 20, kayak.price_per_hour
  end

  def test_for_hours_rented
    kayak = Boat.new(:kayak, 20)
    assert_equal 0, kayak.hours_rented
  end

  def test_it_has_hours_rented
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour
    assert_equal 3, kayak.hours_rented
  end

  def test_for_a_renter
    kayak = Boat.new(:kayak, 20)
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_equal "Patrick Star", renter.name
  end



end
