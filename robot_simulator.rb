class Robot

  def orient(direction)
    @my_directions = [:north, :east, :south, :west]
    raise ArgumentError, 'Argument is not numeric' unless @my_directions.include?(direction)
    @direction = direction
  end

  def turn_right
    direction_index = @my_directions.index(@direction)
    direction_index = -1 if direction_index + 1 == @my_directions.size
    @direction = @my_directions[direction_index + 1]
  end

  def bearing
    @direction
  end
end
