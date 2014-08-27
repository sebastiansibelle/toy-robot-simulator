step "a table of 5 units high by 5 units wide" do
  @table = Table.new(5, 5)
end

step "a robot placed at 0,0 facing north" do
  @robot = Robot.new(@board)
  @robot.place(0, 0, :north)
end