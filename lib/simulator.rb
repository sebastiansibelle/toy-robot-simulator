# lib/simulator.rb
require "./lib/robot"
require "./lib/placement"

class Simulator
  TABLE_X = 5
  TABLE_Y = 5

  InvalidCommand = Class.new(Exception)

  def initialize(stdin, stdout)
    @table = Table.new(TABLE_X, TABLE_Y)
    @robot  = Robot.new(@table)
    @stdin  = stdin
    @stdout = stdout
  end

  def run
    while token = @stdin.gets
      # STDOUT.puts "Input: " + token
      command = Simulator.parse(token)
      unless(command[:type] == :place)
        if(@robot.placed == false)
          @stdout << "unplaced\n"
          next
        end
      end

      case command[:type]
      when :place
        arguments = command[:arguments]
        position = Position.new(arguments[0].to_i, arguments[1].to_i)
        placement = Placement.new(@table, position, Orientation.from_name(arguments[2]))
        @robot.place(placement)
        if(@robot.placed == false)
          @stdout << "unplaced\n"
        end
      when :left
        @robot.left
      when :right
        @robot.right
      when :move
        @robot.move
      when :report
        @robot.report(@stdout)
      end
    end
  end

  def self.parse(token)
    command, arguments = token.split(" ")
    arguments = String(arguments).split(",")

    case command
    when 'PLACE'
      x,y,orientation = arguments
      type = :place
      { type: type, :arguments => [x, y, orientation ] }
      
    when 'LEFT','RIGHT','MOVE','REPORT'
      type = command.downcase.to_sym
      { type: type }
      
    else
      raise InvalidCommand.new("#{command} is an invalid command")
    end
  end
end