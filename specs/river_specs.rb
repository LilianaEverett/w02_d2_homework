require('minitest/rg')
require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Helga")
    fishes = [@fish1, @fish2, @fish3, @fish4]
    @river1 = River.new("Amazon", fishes)
  end

  def test_river_name
    assert_equal("Amazon", @river1.name())
  end

  def test_count_fishes
    assert_equal(4, @river1.count_fishes())
  end

  def test_remove_fish_1_fish
    @river1.remove_fishes(@fish2)
    assert_equal(3, @river1.count_fishes)
  end

  def test_remove_fish_2_fish
    @river1.remove_fishes(@fish2)
    @river1.remove_fishes(@fish3)
    assert_equal(2, @river1.count_fishes)
  end

end
