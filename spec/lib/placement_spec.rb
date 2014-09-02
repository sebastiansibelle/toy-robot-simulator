require "placement"

describe Placement do
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
end