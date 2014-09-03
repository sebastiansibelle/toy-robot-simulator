# spec/lib/robot_spec.rb
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

      expect(robot.placement.position).to eq(Position.new(2,4))
      expect(robot.placement.orientation).to eq(Orientation::NORTH)
    end

    context "when the next position is invalid" do
      it "does not change the robots position" do
        table = Table.new(5,5)
        robot = Robot.new(table)
        position = Position.new(4,4)
        orientation = Orientation::NORTH
        placement = Placement.new(table, position, orientation)
        robot.place(placement)
        robot.move

        expect(robot.placement.position).to eq(Position.new(4,4))
        expect(robot.placement.orientation).to eq(Orientation::NORTH)
      end
    end
  end

  describe "left" do
    it "rotates the robot 90 degrees to the left" do
      table = Table.new(5, 5)
      robot = Robot.new(table)
      position = Position.new(1,1)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)
      robot.place(placement)

      robot.left

      expect(robot.placement.position).to eq(Position.new(1,1))
      expect(robot.placement.orientation).to eq(Orientation::WEST)
    end
  end

  describe "right" do
    it "rotates the robot 90 degrees to the right" do
      table = Table.new(5, 5)
      robot = Robot.new(table)
      position = Position.new(1,1)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)
      robot.place(placement)

      robot.right

      expect(robot.placement.position).to eq(Position.new(1,1))
      expect(robot.placement.orientation).to eq(Orientation::EAST)
    end
  end
end