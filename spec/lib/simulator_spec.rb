# spec/lib/Simulator_spec.rb
require_relative "../support/fakeio"
require "simulator"

describe "Simulator" do
  describe "run" do 
    it "recieves and executes commands from stdin" do
      stdout = double(:stdout)
      stdin = FakeIO.new
      stdin.puts "MOVE"

      simulator = Simulator.new(stdin, stdout)

      expect do
        simulator.run
      end.to change { stdin.inputs }.to([])
    end
  end

  describe "parse" do
    it "creates a command from an input token" do
      expect(Simulator.parse("MOVE")).to eq({:type => :move})
    end

    context "when the token is unmatched" do
      it "raises an exception" do
        expect do
          Simulator.parse("BADTEST")
        end.to raise_error(Simulator::InvalidCommand)
      end
    end

    context "when the command has arguments" do
      it "passes a list of arguments as well" do
        command = Simulator.parse("PLACE 1,2,NORTH")

        expect(command).to eq({:type => :place, :arguments => ["1", "2", "NORTH"]})
      end
    end
  end
end
