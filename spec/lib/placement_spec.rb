# ./spec/lib/placement_spec.rb
require "placement"

describe Placement do
  # Be exhaustive here since being on the table is rather important.
  describe "is_valid" do
    let(:table) { Table.new(2, 2) }
    subject(:placement) { Placement.new(table, position, Orientation::NORTH) }

    context "when the position is on the table" do
      let(:position) { Position.new(1, 1) }
      it "is true" do
        expect(placement.is_valid).to be true
      end
    end

    context "when the position is off the table" do
      let(:position) { Position.new(2, 3) }
      it "is false" do
        expect(placement.is_valid).to be false
      end
    end

    context "when the position is on bottom left hand corner of the table" do
      let(:position) { Position.new(0, 0) }
      it "is true" do
        expect(placement.is_valid).to be true
      end
    end

    context "when the position is on top left hand corner of the table" do
      let(:position) { Position.new(0, 1) }
      it "is true" do
        expect(placement.is_valid).to be true
      end
    end

    context "when the position is on top right hand corner of the table" do
      let(:position) { Position.new(1, 1) }
      it "is true" do
        expect(placement.is_valid).to be true
      end
    end

    context "when the position is on bottom right hand corner of the table" do
      let(:position) { Position.new(1, 0) }
      it "is true" do
        expect(placement.is_valid).to be true
      end
    end

    context "when the x position is less than the origin" do
      let(:position) { Position.new(-1, 1) }
      it "is false" do
        expect(placement.is_valid).to be false
      end
    end

    context "when the y position is less than the origin" do
      let(:position) { Position.new(1, -1) }
      it "is false" do
        expect(placement.is_valid).to be false
      end
    end

    context "when the x position is greater than the table width" do
      let(:position) { Position.new(3, 2) }
      it "is false" do
        expect(placement.is_valid).to be false
      end
    end

    context "when the y position is greater than the table height" do
      let(:position) { Position.new(1, 3) }
      it "is false" do
        expect(placement.is_valid).to be false
      end
    end
  end

  describe "#left" do
    it "returns a placement rotated 90 degrees in the left direction" do
      table = Table.new(1, 1)
      position = Position.new(0, 0)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)

      west_placement = Placement.new(table, position, Orientation::WEST)
      expect do
        expect(placement.left).to eq(west_placement)
      end.to_not change { placement }
    end
  end

  
  describe "#right" do
    it "returns a placement rotated 90 degrees in the right direction" do
      table = Table.new(1, 1)
      position = Position.new(0, 0)
      orientation = Orientation::NORTH
      placement = Placement.new(table, position, orientation)

      east_placement = Placement.new(table, position, Orientation::EAST)
      expect do
        expect(placement.right).to eq(east_placement)
      end.to_not change { placement }
    end
  end
end