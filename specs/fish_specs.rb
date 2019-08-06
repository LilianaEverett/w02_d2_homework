require('minitest/rg')
require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
  end

  def test_fish_name
    assert_equal("salmon", @fish1.name())
  end


end
