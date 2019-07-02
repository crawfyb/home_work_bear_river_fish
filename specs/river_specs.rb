# frozen_string_literal: true

require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test
  # Put into setup() function
  def setup
    @river = River.new('Nile')

    @fish1 = Fish.new('Nemo')
    @fish2 = Fish.new('Dory')
    @fish3 = Fish.new('Marlin')

    @all_fish = [@fish1, @fish2, @fish3]
  end

  def test_return_river_name
    assert_equal('Nile', @river.name)
  end

  def test_amount_of_fish_in_river
    assert_equal(0, @river.amount_of_fish_in_river)
  end

  def test_add_fish_in_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    assert_equal(3, @river.amount_of_fish_in_river)
  end
end
