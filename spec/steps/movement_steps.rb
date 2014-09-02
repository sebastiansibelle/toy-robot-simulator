step "a table of 5 units high by 5 units wide" do
  @table = Table.new(5, 5)
end

step "a robot placed at 0,0 facing north" do
  @robot = Robot.new(@table)
  position = Position.new(0,0)
  orientation = Orientation::NORTH
  @robot.place(position, orientation)
end

step "the robot moves" do
  @robot.move
end