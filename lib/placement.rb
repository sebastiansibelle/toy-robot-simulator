# lib/placement.rb
require "./lib/table"
require "./lib/position"
require "./lib/orientation"

class Placement < Struct.new(:table, :position, :orientation)
  def is_valid
    position.x >= 0 && position.x < table.width && position.y >= 0 &&
    position.y < table.height
  end

  def report
    position.to_s + "," + orientation.to_s.upcase
  end
end