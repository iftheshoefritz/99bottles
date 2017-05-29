class Bottles
  
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)
    "#{bottle_number.amount.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.amount} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.action}, " +
    # Ideally would be able to use bottle_number.successor.amount
    "#{next_bottle_number.amount} #{next_bottle_number.container} of beer on the wall.\n"
  end

  def successor(n)
    BottleNumber.new(n).successor
  end

  def action(n)
    BottleNumber.new(n).action
  end

  def amount(n)
    BottleNumber.new(n).amount
  end

  def container(n)
    BottleNumber.new(n).container
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
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
