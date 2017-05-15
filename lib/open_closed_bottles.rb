class OpenClosedBottles

  # Code should know who/what will perform something, not how to do it
  
  # Something else creates the right instance / type and passes it into this method
  def verse(verse_generator)
    # each different type of verse_generator will generate a different type of verse
    verse_generator.verse
  end
end

# Instead of changing the verse method to add the new requirement, we add a new VerseTypeX class

class VerseType0
  def verse
    ...
  end
end

class VerseType1
  def verse
    ...
  end
end

class VerseTypeElse
  def verse
    ...
  end
end

