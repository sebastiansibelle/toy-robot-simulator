# lib/robot.rb
class Robot
  attr_reader :placement

  def initialize(table)
    @table = table
    @placed = false
  end

  def place(placement)
    set_placement(placement)
  end

  def move
    if @placed
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

      set_placement(new_placement)
    end
  end

  def right
    @placement.right
  end

  def left
    @placement.left
  end

  def report(output)
    output << @placement.report
  end

  private

  def set_placement(placement)
    if(placement.is_valid)
      @placement = placement
      @placed = true
    end
  end
end