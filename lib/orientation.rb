# lib/orientation.rb

class Orientation
  NORTH = :north
  SOUTH = :south
  EAST = :east
  WEST = :west

  def self.from_name(name)
    const_get(name.to_s.upcase)
  end
end