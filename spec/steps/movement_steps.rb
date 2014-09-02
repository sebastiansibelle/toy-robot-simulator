step "a table of :x units wide by :y units high" do |x, y|
  @table = Table.new(x.to_i, y.to_i)
end

step "a robot placed at :x,:y facing north" do |x, y|
  @robot = Robot.new(@table)
  position = Position.new(x.to_i, y.to_i)
  orientation = Orientation::NORTH
  placement = Placement.new(@table, position, orientation)
  @robot.place(placement)
end

step "the robot moves" do
  @robot.move
end

step "the robot should be at :x,:y facing north" do |x, y|
  expect(@robot.placement.position).to eq(Position.new(x.to_i, y.to_i))
  expect(@robot.placement.orientation).to eq(Orientation::NORTH)
end