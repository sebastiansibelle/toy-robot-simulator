require_relative 'robot'
require_relative 'table'
require_relative 'application'

if ARGV.length > 0
  puts "please use standard input for this program (or give it option parsing thing)"
  exit 1
end

STDERR.puts "Welcome to the Toy Robot Simulator!"
STDERR.puts "We are simulating a toy robot moving on a square tabletop."
STDERR.puts "The tabletop is #{TABLE_X} unit wide by #{TABLE_Y} units high."
STDERR.puts "Valid commands include: PLACE X,Y,F | MOVE | LEFT | RIGHT | REPORT."
STDERR.puts "The first valid command must be a PLACE X,Y,F command"

application = Application.new(STDIN, STDOUT)
application.run