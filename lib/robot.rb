class Robot
  attr_reader :placement

  def initialize(table)
    @table = table
  end

  def place(placement)
    @placement = placement
  end

  def move
    position = @placement.position
    orientation = @placement.orientation

    case orientation
    when Orientation::NORTH
      new_position = Position.new(position.x, position.y + 1)
    when Orientation::SOUTH
      new_position = Position.new(position.x, position.y - 1)
    when Orientation::WEST
      new_position = Position.new(position.x - 1 , position.y)
    when Orientation::EAST
      new_position = Position.new(position.x + 1, position.y)
    end

    new_placement = Placement.new(@table, new_position, orientation)

    if new_placement.is_valid
      @placement = new_placement
    end
  end
end