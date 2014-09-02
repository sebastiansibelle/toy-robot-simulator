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
        expect(placement.is_valid).to be gfalse
      end
    end
  end
end