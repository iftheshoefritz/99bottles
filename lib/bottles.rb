class Bottles
  
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.for(number)
    next_bottle_number = BottleNumber.for(bottle_number.successor)
    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    # Ideally would be able to use bottle_number.successor
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber
  attr_reader :number

  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end

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
    "Take #{pronoun} down and pass it around"
  end

  def amount
    number.to_s
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end
end

class BottleNumber0 < BottleNumber
  def successor
    99
  end

  def action
    "Go to the store and buy some more"
  end

  def amount
    "no more"
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end

