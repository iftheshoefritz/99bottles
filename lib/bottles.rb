class Bottles
  
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = bottle_number_for(number)
    next_bottle_number = bottle_number_for(bottle_number.successor)
    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    # Ideally would be able to use bottle_number.successor
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    if number == 0
      BottleNumber0
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{amount} #{container}"
  end

  def successor
    number - 1
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def amount
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1 
      "it"
    else
      "one"
    end
  end
end

class BottleNumber0 < BottleNumber
  def successor
    99
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def amount
    if number == 0
      "no more"
    else
      number.to_s
    end
  end
end
