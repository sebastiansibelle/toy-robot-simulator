require "table"
require "position"
require "orientation"

class Placement < Struct.new(:table, :position, :orientation)
end