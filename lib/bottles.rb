class Bottles
  
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "#{amount(number).capitalize} #{container(number)} of beer on the wall, " +
      "#{amount(number)} #{container(number)} of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{amount(number).capitalize} #{container(number)} of beer on the wall, " +
      "#{amount(number)} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{amount(number-1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  def amount(n)
    if n == 0
      "no more"
    else
      n.to_s
    end
  end

  def container(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(n)
    if n == 1 
      "it"
    else
      "one"
    end
  end

end
