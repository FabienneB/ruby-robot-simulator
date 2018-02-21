class Simulator
  def instructions(letters)
    @orientations = []
    letters.split(//).each do |letter|
      if letter == 'L'
        @orientations << :turn_left
      elsif letter == 'R'
        @orientations << :turn_right
      elsif letter == 'A'
       @orientations << :advance
      end
    end
    @orientations
  end

  def place(robot, hash = {})
    @coordinates = [-2, 1]
    @direction = :east
  end

  def evaluate(robot, letters)
    letters.split('').map { |letter| instructions(letter) }
  end
end

    # robot = Robot.new
    # simulator.place(robot, x: -2, y: 1, direction: :east)
    # simulator.evaluate(robot, 'RLAALAL')
    # assert_equal [0, 2], robot.coordinates
    # assert_equal :west, robot.bearing
