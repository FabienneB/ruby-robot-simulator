class Simulator
  def instructions(letter)
    if letter == 'L'
      element = :turn_left
    elsif letter == 'R'
      element = :turn_right
    elsif letter == 'A'
      element = :advance
    end
    [element]
  end
end
