# lib/application.rb
# Main application class runs from here.
# 
class Application
  def initialize(stdin, stdout)
    @table = Table.new(5,5)
    @robot  = Robot.new(@table)
    @stdin  = stdin
    @stdout = stdout
  end

  def run
  end
end