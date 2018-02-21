require_relative 'robot_simulator'

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
    robot.orient(hash[:direction])
    robot.at(hash[:x], hash[:y])
  end

  def evaluate(robot, letters)
    @orientations = instructions(letters)
    @orientations.each do |orientation|
      robot.turn_left if orientation == :turn_left
      robot.turn_right if orientation == :turn_right
      robot.advance if orientation == :advance
    end
    return @coordinates
  end
end

