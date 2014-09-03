# spec/lib/orientation_spec.rb
require "orientation"

describe Orientation do
  describe ".left" do
    context "when facing north" do
      it "rotates to face west" do
        left = Orientation.left(Orientation::NORTH)

        expect(left).to eq(Orientation::WEST)
      end
    end

    context "when facing east" do
      it "rotates to face south" do
        left = Orientation.left(Orientation::EAST)

        expect(left).to eq(Orientation::NORTH)
      end
    end

    context "when facing south" do
      it "rotates to face east" do
        left = Orientation.left(Orientation::SOUTH)

        expect(left).to eq(Orientation::EAST)
      end
    end

    context "when facing west" do
      it "rotates to face south" do
        left = Orientation.left(Orientation::WEST)

        expect(left).to eq(Orientation::SOUTH)
      end
    end
  end

  describe ".right" do
    context "when facing north" do
      it "rotates to face east" do
        right = Orientation.right(Orientation::NORTH)

        expect(right).to eq(Orientation::EAST)
      end
    end

    context "when facing east" do
      it "rotates to face south" do
        right = Orientation.right(Orientation::EAST)

        expect(right).to eq(Orientation::SOUTH)
      end
    end

    context "when facing south" do
      it "rotates to face west" do
        right = Orientation.right(Orientation::SOUTH)

        expect(right).to eq(Orientation::WEST)
      end
    end

    context "when facing west" do
      it "rotates to face north" do
        right = Orientation.right(Orientation::WEST)

        expect(right).to eq(Orientation::NORTH)
      end
    end
  end
end