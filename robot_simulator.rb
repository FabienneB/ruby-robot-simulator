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

  def turn_left
    direction_index = @my_directions.index(@direction)
    # direction_index = @my_directions.size -1 if direction_index == 0
    @direction = @my_directions[direction_index -1]
  end

  def at(x, y)
    @coordinates = [x, y]
  end

  def coordinates
    @coordinates
  end

  def advance
    @coordinates[1] += 1 if @direction == :north
    @coordinates[0] += 1 if @direction == :east
    @coordinates[1] += -1 if @direction == :south
  end

  def bearing
    @direction
  end
end
