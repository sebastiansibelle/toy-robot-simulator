require_relative 'lib/robot'
require_relative 'lib/table'
require_relative 'lib/application'

STDERR.puts "Welcome to the Toy Robot Simulator!"
STDERR.puts "We are simulating a toy robot moving on a square tabletop."
STDERR.puts "Valid commands include: PLACE X,Y,F | MOVE | LEFT | RIGHT | REPORT."
STDERR.puts "The first valid command must be a PLACE X,Y,F command"

application = Application.new(STDIN, STDOUT)
application.run