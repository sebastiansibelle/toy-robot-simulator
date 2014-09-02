require "table"
require "position"
require "orientation"

class Placement < Struct.new(:table, :position, :orientation)
  def is_valid
    position.x >= 0 && position.x < table.width && position.y >= 0 &&
    position.y < table.height
  end
end