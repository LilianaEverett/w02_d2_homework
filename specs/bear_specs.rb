require('minitest/rg')
require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup
    stomack = []
    @bear1 = Bear.new("Yogi", "Grizzly", stomack)
    @fish1 = Fish.new("Nemo")
    fishes = [@fish1, @fish2, @fish3, @fish4]
    @river1 = River.new("Amazon", fishes)
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_type
    assert_equal("Grizzly", @bear1.type())
  end

  def test_bear_stomack
    assert_equal(0, @bear1.food_count())
  end

  def test_take_fish_from_river
    @bear1.add_fish_from_river(@river1, @fish1)
    assert_equal(1, @bear1.food_count())
    assert_equal(3, @river1.count_fishes())
  end

  def test_make_sound
    assert_equal("Growl", @bear1.make_sound)
  end

end
