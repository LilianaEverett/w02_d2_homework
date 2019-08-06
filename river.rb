class River


  attr_accessor :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def count_fishes
    return @fishes.count
  end

  def remove_fishes(fish)
     @fishes.delete(fish)
  end





end
