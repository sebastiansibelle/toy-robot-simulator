class Robot
  attr_reader :position, :orientation
  
  def initialize(table)
    @table = table
  end

  def place(position, orientation)
    @position = position
    @orientation = orientation
  end
end