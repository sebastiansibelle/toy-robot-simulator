class Robot
  attr_reader :position, :orientation

  def initialize(table)
    @table = table
  end

  def place(position, orientation)
    @position = position
    @orientation = orientation
  end

  def move
    position = @position
    orientation = @orientation
    case orientation
      when Orientation::NORTH
        @position = Position.new(position.x, position.y + 1)
      when Orientation::SOUTH
        @position = Position.new(position.x, position.y - 1)
      when Orientation::WEST
        @position = Position.new(position.x - 1 , position.y)
      when Orientation::EAST
        @position = Position.new(position.x + 1, position.y)
      end
  end
end