require "position"

describe Position do
  describe "to_s" do
    it "converts a position to a string" do
      position = Position.new(2,3)
      string = position.to_s 

      expect(string).to eq("2,3")
    end
  end
end