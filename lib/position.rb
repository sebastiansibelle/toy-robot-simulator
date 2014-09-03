# lib/position.rb
class Position < Struct.new(:x, :y)
  def to_s
    "#{x},#{y}"
  end
end