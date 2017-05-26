class Bottles
  
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{amount(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{amount(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{amount(successor(number))} #{container(number - 1)} of beer on the wall.\n"
  end

  def successor(n)
    if n == 0
      99
    else
      n - 1
    end
  end

  def action(n)
    if n == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(n)} down and pass it around"
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
