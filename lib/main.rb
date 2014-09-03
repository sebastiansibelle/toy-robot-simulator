require_relative 'robot'
require_relative 'table'
require_relative 'application'

if ARGV.length > 0
  puts "please use standard input for this program (or give it option parsing thing)"
  exit 1
end

application = Application.new(STDIN, STDOUT)
application.run