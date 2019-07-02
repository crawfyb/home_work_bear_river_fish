require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestFish < MiniTest::Test
  # Put into setup() function
  def setup
    @fish1 = Fish.new("Nemo")
  end


def test_return_fish_name
  assert_equal("Nemo", @fish1.name)
end 


end
