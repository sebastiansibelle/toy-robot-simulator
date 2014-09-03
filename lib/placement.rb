# lib/placement.rb
require "./lib/table"
require "./lib/position"
require "./lib/orientation"

class Placement < Struct.new(:table, :position, :orientation)
  def is_valid
    position.x >= 0 && position.x < table.width && position.y >= 0 &&
    position.y < table.height
  end

  def left
    Placement.new(table, position, Orientation.left(orientation))
  end

  def right
    Placement.new(table, position, Orientation.right(orientation))
  end

  def report
    position.to_s + "," + orientation.to_s.upcase
  end
end