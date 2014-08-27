require "table"

describe Table do
  describe "initialize" do
    subject(:table) { Table.new(6,5) }
    it "sets the width" do
      expect(table.width).to eq(6)
    end
    it "sets the height" do
      expect(table.height).to eq(5)
    end
  end
end