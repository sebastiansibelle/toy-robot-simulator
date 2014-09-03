require_relative "../support/fakeio"
require "application"

describe "Application" do
  describe "run" do 
    it "recieves and executes commands from stdin" do
    end
  end

  describe "parse" do
    it "creates a command from an input token" do
      expect(Application.parse("MOVE")).to eq({:type => :move})
    end

    context "when the token is unmatched" do
      it "raises an exception" do
        expect do
          Application.parse("BADTEST")
        end.to raise_error(Application::InvalidCommand)
      end
    end

    context "when the command has arguments" do
      it "passes a list of arguments as well" do
        command = Application.parse("PLACE 1,2,NORTH")

        expect(command).to eq({:type => :place, :arguments => ["1", "2", "NORTH"]})
      end
    end
  end
end
