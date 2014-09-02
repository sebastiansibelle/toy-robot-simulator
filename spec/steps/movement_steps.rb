step "a table of :x units wide by :y units high" do |x, y|
  @table = Table.new(x.to_i, y.to_i)
end

step "a robot placed at :x,:y facing north" do |x, y|
  @robot = Robot.new(@table)
  position = Position.new(x.to_i, y.to_i)
  orientation = Orientation::NORTH
  @robot.place(position, orientation)
end

step "the robot moves" do
  @robot.move
end

step "the robot should be at :x,:y facing north" do |x, y|
  expect(@robot.position).to eq(Position.new(x.to_i, y.to_i))
  expect(@robot.orientation).to eq(Orientation::NORTH)
end