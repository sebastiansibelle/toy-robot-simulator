require "robot"

describe Robot do
  describe "place" do
    it "places the robot on the table" do
      table = Table.new(5,5)
      robot = Robot.new(table)
      position = Position.new(2,3)
      orientation = Orientation::NORTH
      robot.place(position, orientation)

      expect(robot.position).to eq(Position.new(2,3))
      expect(robot.orientation).to eq(Orientation::NORTH)
    end
  end

  describe "move" do
    it "moves the robot's location" do
      table = Table.new(5,5)
      robot = Robot.new(table)
      position = Position.new(2,3)
      orientation = Orientation::NORTH
      robot.place(position, orientation)
      robot.move 

      expect(robot.position).to eq(Position.new(2,4))
      expect(robot.orientation).to eq(Orientation::NORTH)
    end
  end
end