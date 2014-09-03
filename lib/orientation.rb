# lib/orientation.rb

class Orientation
  NORTH = :north
  SOUTH = :south
  EAST = :east
  WEST = :west
  LEFT = -1
  RIGHT = 1
  @compass = [NORTH, EAST, SOUTH, WEST]

  def self.from_name(name)
    const_get(name.to_s.upcase)
  end

  def self.left(orientation)
    self.rotate(orientation, LEFT)
  end

  def self.right(orientation)
    self.rotate(orientation, RIGHT)
  end

  private

  def self.rotate(orientation, direction)
    index = @compass.index(orientation)
    new_compass = @compass.rotate(direction)
    new_compass[index]
  end
end