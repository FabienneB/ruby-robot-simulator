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

  # def place(robot, hash = {})
  #   @coordinates = [-2, 1]
  #   @direction = :east
  # end

  # def evaluate(robot, letters)
  #   letters.split('').map { |letter| instructions(letter) }
  # end
end
