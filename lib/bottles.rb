class Bottles
  def verse(num)
    next_num = num - 1
    next_num = 99 if next_num == 0
    %Q[#{pretty(num)} #{bottles_for_number(num)} of beer on the wall, #{pretty(num)} #{bottles_for_number(num)} of beer.\n#{bottle_action(num)} #{pretty(next_num)} #{bottles_for_number(next_num)} of beer on the wall.\n]
  end

  def pretty(num)
    return "no more" if num == 0
    num
  end

  def bottle_article(num)
    return "it" if num == 1
    "one"
  end

  def bottles_for_number(num)
    return "bottle" if num == 1
    "bottles"
  end

  def bottle_action(num)
    return "Go to the store and buy some more," if num == 0
    "Take #{bottle_article(num)} down and pass it around,"
  end
end
