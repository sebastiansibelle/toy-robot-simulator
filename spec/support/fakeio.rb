# spec/support/fakeio.rb
# FakeIO class to fake stdinput for testing.
# Adapted/simplified from here: http://dalibornasevic.com/posts/39-simple-way-to-test-io-in-ruby
class FakeIO
  attr_reader :inputs

  def initialize
    @inputs = []
  end

  def puts(input)
    @inputs << input
  end

  def gets
    @inputs.shift
  end
end
