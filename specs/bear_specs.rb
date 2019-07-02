# frozen_string_literal: true

require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test
  # Put into setup() function
  def setup
    @bear = Bear.new('Winnie', 'Teddy')

    @fish1 = Fish.new('Nemo')
    @fish2 = Fish.new('Dory')
    @fish3 = Fish.new('Marlin')

    @all_fish = [@fish1, @fish2, @fish3]
  end

  # frozen_string_literal: true

  def test_return_bear_name
    assert_equal('Winnie', @bear.name)
    end

  def test_number_of_fish_in_stomach
    assert_equal(0, @bear.number_of_fish_in_stomach)
  end

  def test_add_fish_to_stomach
    @bear.add_fish_to_stomach(@fish1)
    @bear.add_fish_to_stomach(@fish2)
    @bear.add_fish_to_stomach(@fish3)
    assert_equal(3, @bear.number_of_fish_in_stomach)
  end

  def test_bear_eats_fish
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @bear.bear_eats_fish(@river)
    assert_equal(0, @river.amount_of_fish_in_river)
    assert_equal(3, @bear.number_of_fish_in_stomach)
  end
end
