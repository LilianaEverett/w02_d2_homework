class Bear

attr_accessor :name, :type, :stomack

def initialize(name, type, stomack)
  @name = name
  @type = type
  @stomack = []
end

def add_fish_from_river(river, fish)
  fish = river.remove_fishes(fish)
  if fish != nil
     @stomack.push(fish)
  end
end

def make_sound
  return "Growl"
end





end
