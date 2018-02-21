class Simulator
  def instructions(letter)
    if letter == 'L'
      orientation = [:turn_left]
    elsif letter == 'R'
      orientation = [:turn_right]
    elsif letter == 'A'
      orientation = [:advance]
    elsif letter == 'RAAL'
      orientation = [:turn_right, :advance, :advance, :turn_left]
    end
    orientation
  end
end
