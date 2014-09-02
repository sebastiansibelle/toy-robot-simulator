require "robot"

describe Robot do
  describe "place" do
    it "places the robot on the table" do
      table = Table.new(5,5)
      robot = Robot.new(table)
      position = Position.new(2,3)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)
      robot.place(placement)

      expect(robot.placement.table).to eq(Table.new(5,5))
      expect(robot.placement.position).to eq(Position.new(2,3))
      expect(robot.placement.orientation).to eq(Orientation::NORTH)
    end
  end

  describe "move" do
    it "moves the robot's position" do
      table = Table.new(5,5)
      robot = Robot.new(table)
      position = Position.new(2,3)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)
      robot.place(placement)
      robot.move 

      expect(robot.placement.table).to eq(Table.new(5,5))
      expect(robot.placement.position).to eq(Position.new(2,4))
      expect(robot.placement.orientation).to eq(Orientation::NORTH)
    end

    context "when the next position is invalid" do
      it "does not change the robots position" do
        table = Table.new(5,5)
        robot = Robot.new(table)
        position = Position.new(5,5)
        orientation = Orientation::NORTH
        placement = Placement.new(table, position, orientation)
        robot.place(placement)
        robot.move

      expect(robot.placement.table).to eq(Table.new(5,5))
      expect(robot.placement.position).to eq(Position.new(5,5))
      expect(robot.placement.orientation).to eq(Orientation::NORTH)
      end
    end
  end
end